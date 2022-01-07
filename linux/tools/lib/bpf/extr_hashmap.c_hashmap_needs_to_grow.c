
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int cap; int sz; } ;



__attribute__((used)) static bool hashmap_needs_to_grow(struct hashmap *map)
{

 return (map->cap == 0) || ((map->sz + 1) * 4 / 3 > map->cap);
}
