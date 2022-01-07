
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct map {int erange_warned; int refcnt; int * groups; int rb_node; int unmap_ip; int map_ip; int dso; scalar_t__ reloc; void* pgoff; void* end; void* start; } ;
struct dso {int dummy; } ;


 int RB_CLEAR_NODE (int *) ;
 int dso__get (struct dso*) ;
 int map__map_ip ;
 int map__unmap_ip ;
 int refcount_set (int *,int) ;

void map__init(struct map *map, u64 start, u64 end, u64 pgoff, struct dso *dso)
{
 map->start = start;
 map->end = end;
 map->pgoff = pgoff;
 map->reloc = 0;
 map->dso = dso__get(dso);
 map->map_ip = map__map_ip;
 map->unmap_ip = map__unmap_ip;
 RB_CLEAR_NODE(&map->rb_node);
 map->groups = ((void*)0);
 map->erange_warned = 0;
 refcount_set(&map->refcnt, 1);
}
