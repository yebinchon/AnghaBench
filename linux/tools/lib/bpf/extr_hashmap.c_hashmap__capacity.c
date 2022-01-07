
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {size_t cap; } ;



size_t hashmap__capacity(const struct hashmap *map)
{
 return map->cap;
}
