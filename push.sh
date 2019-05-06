#!/usr/bin/env bash
set -e

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [dockerfile] [tag]"
    exit 1
fi

DOCKER_FILE=$1
TAG=$2

docker build -f ${DOCKER_FILE} -t ${TAG} .
docker push ${TAG}