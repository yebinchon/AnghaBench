
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {unsigned int max_elts; int * elts; } ;


 int ** TRACING_MAP_ELT (int *,unsigned int) ;
 int tracing_map_array_free (int *) ;
 int tracing_map_elt_free (int *) ;

__attribute__((used)) static void tracing_map_free_elts(struct tracing_map *map)
{
 unsigned int i;

 if (!map->elts)
  return;

 for (i = 0; i < map->max_elts; i++) {
  tracing_map_elt_free(*(TRACING_MAP_ELT(map->elts, i)));
  *(TRACING_MAP_ELT(map->elts, i)) = ((void*)0);
 }

 tracing_map_array_free(map->elts);
 map->elts = ((void*)0);
}
