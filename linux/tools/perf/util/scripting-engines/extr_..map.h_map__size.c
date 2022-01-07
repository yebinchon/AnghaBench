
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {size_t end; size_t start; } ;



__attribute__((used)) static inline size_t map__size(const struct map *map)
{
 return map->end - map->start;
}
