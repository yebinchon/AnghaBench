
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int refcnt; } ;


 int refcount_inc (int *) ;

struct perf_cpu_map *perf_cpu_map__get(struct perf_cpu_map *map)
{
 if (map)
  refcount_inc(&map->refcnt);
 return map;
}
