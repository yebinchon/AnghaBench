
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int refcnt; } ;


 int perf_thread_map__delete (struct perf_thread_map*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void perf_thread_map__put(struct perf_thread_map *map)
{
 if (map && refcount_dec_and_test(&map->refcnt))
  perf_thread_map__delete(map);
}
