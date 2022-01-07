
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {scalar_t__ sz; scalar_t__ cap_bits; scalar_t__ cap; int * buckets; void* ctx; int equal_fn; int hash_fn; } ;
typedef int hashmap_hash_fn ;
typedef int hashmap_equal_fn ;



void hashmap__init(struct hashmap *map, hashmap_hash_fn hash_fn,
     hashmap_equal_fn equal_fn, void *ctx)
{
 map->hash_fn = hash_fn;
 map->equal_fn = equal_fn;
 map->ctx = ctx;

 map->buckets = ((void*)0);
 map->cap = 0;
 map->cap_bits = 0;
 map->sz = 0;
}
