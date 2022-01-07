
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {int dummy; } ;
struct tracing_map {unsigned int max_elts; int elts; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int *) ;
 int ** TRACING_MAP_ELT (int ,unsigned int) ;
 int tracing_map_array_alloc (unsigned int,int) ;
 int * tracing_map_elt_alloc (struct tracing_map*) ;
 int tracing_map_free_elts (struct tracing_map*) ;

__attribute__((used)) static int tracing_map_alloc_elts(struct tracing_map *map)
{
 unsigned int i;

 map->elts = tracing_map_array_alloc(map->max_elts,
         sizeof(struct tracing_map_elt *));
 if (!map->elts)
  return -ENOMEM;

 for (i = 0; i < map->max_elts; i++) {
  *(TRACING_MAP_ELT(map->elts, i)) = tracing_map_elt_alloc(map);
  if (IS_ERR(*(TRACING_MAP_ELT(map->elts, i)))) {
   *(TRACING_MAP_ELT(map->elts, i)) = ((void*)0);
   tracing_map_free_elts(map);

   return -ENOMEM;
  }
 }

 return 0;
}
