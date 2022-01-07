
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {scalar_t__ sz; scalar_t__ cap_bits; scalar_t__ cap; int buckets; } ;


 int free (int ) ;

void hashmap__clear(struct hashmap *map)
{
 free(map->buckets);
 map->cap = map->cap_bits = map->sz = 0;
}
