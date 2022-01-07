
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int * groups; int dso; int rb_node; int refcnt; } ;


 int RB_CLEAR_NODE (int *) ;
 int dso__get (int ) ;
 struct map* memdup (struct map*,int) ;
 int refcount_set (int *,int) ;

struct map *map__clone(struct map *from)
{
 struct map *map = memdup(from, sizeof(*map));

 if (map != ((void*)0)) {
  refcount_set(&map->refcnt, 1);
  RB_CLEAR_NODE(&map->rb_node);
  dso__get(map->dso);
  map->groups = ((void*)0);
 }

 return map;
}
