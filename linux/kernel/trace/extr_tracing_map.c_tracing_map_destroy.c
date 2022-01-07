
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {int map; } ;


 int kfree (struct tracing_map*) ;
 int tracing_map_array_free (int ) ;
 int tracing_map_free_elts (struct tracing_map*) ;

void tracing_map_destroy(struct tracing_map *map)
{
 if (!map)
  return;

 tracing_map_free_elts(map);

 tracing_map_array_free(map->map);
 kfree(map);
}
