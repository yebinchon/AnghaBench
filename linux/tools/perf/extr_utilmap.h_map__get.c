
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int refcnt; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct map *map__get(struct map *map)
{
 if (map)
  refcount_inc(&map->refcnt);
 return map;
}
