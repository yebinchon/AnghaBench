
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int refcnt; } ;


 int refcount_inc (int *) ;

struct perf_thread_map *perf_thread_map__get(struct perf_thread_map *map)
{
 if (map)
  refcount_inc(&map->refcnt);
 return map;
}
