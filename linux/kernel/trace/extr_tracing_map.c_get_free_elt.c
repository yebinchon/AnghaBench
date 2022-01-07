
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracing_map_elt {int dummy; } ;
struct tracing_map {int max_elts; TYPE_1__* ops; int elts; int next_elt; } ;
struct TYPE_2__ {int (* elt_init ) (struct tracing_map_elt*) ;} ;


 struct tracing_map_elt** TRACING_MAP_ELT (int ,int) ;
 int atomic_inc_return (int *) ;
 int stub1 (struct tracing_map_elt*) ;

__attribute__((used)) static struct tracing_map_elt *get_free_elt(struct tracing_map *map)
{
 struct tracing_map_elt *elt = ((void*)0);
 int idx;

 idx = atomic_inc_return(&map->next_elt);
 if (idx < map->max_elts) {
  elt = *(TRACING_MAP_ELT(map->elts, idx));
  if (map->ops && map->ops->elt_init)
   map->ops->elt_init(elt);
 }

 return elt;
}
