FROM registry.access.redhat.com/ubi9/ubi-minimal:latest@sha256:d85040b6e3ed3628a89683f51a38c709185efc3fb552db2ad1b9180f2a6c38be

ARG KO_VERSION=v0.17.1
RUN microdnf install -y go-toolset
RUN GOBIN=/usr/local/bin go install github.com/google/ko@${KO_VERSION}

LABEL org.opencontainers.image.source=https://github.com/vdemeester/ko-ubi-task
LABEL org.opencontainers.image.description="ko ubi task image"
LABEL org.opencontainers.image.licenses="Apache-2.0"