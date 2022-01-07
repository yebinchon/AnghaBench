
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {unsigned int max_elts; int elts; int map; int drops; int hits; int next_elt; } ;


 int * TRACING_MAP_ELT (int ,unsigned int) ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int) ;
 int tracing_map_array_clear (int ) ;
 int tracing_map_elt_clear (int ) ;

void tracing_map_clear(struct tracing_map *map)
{
 unsigned int i;

 atomic_set(&map->next_elt, -1);
 atomic64_set(&map->hits, 0);
 atomic64_set(&map->drops, 0);

 tracing_map_array_clear(map->map);

 for (i = 0; i < map->max_elts; i++)
  tracing_map_elt_clear(*(TRACING_MAP_ELT(map->elts, i)));
}
