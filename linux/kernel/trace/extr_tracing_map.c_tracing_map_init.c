
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {int n_fields; } ;


 int EINVAL ;
 int tracing_map_alloc_elts (struct tracing_map*) ;
 int tracing_map_clear (struct tracing_map*) ;

int tracing_map_init(struct tracing_map *map)
{
 int err;

 if (map->n_fields < 2)
  return -EINVAL;

 err = tracing_map_alloc_elts(map);
 if (err)
  return err;

 tracing_map_clear(map);

 return err;
}
