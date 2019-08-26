#!/bin/bash

source ./config
source ./dumpinfo
sudo nvidia-docker run -d --rm --name tars_web --env DBIP=${DBIP} --env DUMP_HOST=${DUMP_HOST} --net=host -v `pwd`:/share freelw/tars_web_and_node
