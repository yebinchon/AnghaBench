
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int refcnt; } ;


 int map__delete (struct map*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void map__put(struct map *map)
{
 if (map && refcount_dec_and_test(&map->refcnt))
  map__delete(map);
}
