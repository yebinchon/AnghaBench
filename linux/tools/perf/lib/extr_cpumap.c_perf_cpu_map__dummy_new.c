
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; int refcnt; } ;


 struct perf_cpu_map* malloc (int) ;
 int refcount_set (int *,int) ;

struct perf_cpu_map *perf_cpu_map__dummy_new(void)
{
 struct perf_cpu_map *cpus = malloc(sizeof(*cpus) + sizeof(int));

 if (cpus != ((void*)0)) {
  cpus->nr = 1;
  cpus->map[0] = -1;
  refcount_set(&cpus->refcnt, 1);
 }

 return cpus;
}
