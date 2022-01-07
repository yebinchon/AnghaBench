
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int refcnt; } ;


 int cpu_map__delete (struct perf_cpu_map*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void perf_cpu_map__put(struct perf_cpu_map *map)
{
 if (map && refcount_dec_and_test(&map->refcnt))
  cpu_map__delete(map);
}
