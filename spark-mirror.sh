#!/bin/sh

set -x
SPARK_FILENAME=spark-${SPARK_VERSION}-bin-${HADOOP_VERSION}
curl --stderr /dev/null https://www.apache.org/dyn/closer.lua/spark/spark-${SPARK_VERSION}/${SPARK_FILENAME}.tgz?as_json | jq -r '"\(.preferred)\(.path_info)"'
set +x