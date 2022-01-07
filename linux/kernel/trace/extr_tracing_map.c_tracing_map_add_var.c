
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {scalar_t__ n_vars; } ;


 int EINVAL ;
 scalar_t__ TRACING_MAP_VARS_MAX ;

int tracing_map_add_var(struct tracing_map *map)
{
 int ret = -EINVAL;

 if (map->n_vars < TRACING_MAP_VARS_MAX)
  ret = map->n_vars++;

 return ret;
}
