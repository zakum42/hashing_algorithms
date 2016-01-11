#!/bin/bash
alias errcho='>&2 echo'
for i in {1..10}
do
	errcho "execution $i: main dict/dict$i queries/query$i 3 $((10#$i * 200000)) $((10#$i * 10000000)) 0.6 $((10#$i * 200000))"
	echo "execution $i: main dict/dict$i queries/query$i 3 $((10#$i * 200000)) $((10#$i * 10000000)) 0.6 $((10#$i * 200000))"
	main "dict/dict$i" "queries/query$i" 3 "$((10#$i * 200000))" "$((10#$i * 10000000))" 0.6 "$((10#$i * 200000))"
done