
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; int refcnt; } ;


 struct perf_cpu_map* malloc (int) ;
 int refcount_set (int *,int) ;

struct perf_cpu_map *perf_cpu_map__empty_new(int nr)
{
 struct perf_cpu_map *cpus = malloc(sizeof(*cpus) + sizeof(int) * nr);

 if (cpus != ((void*)0)) {
  int i;

  cpus->nr = nr;
  for (i = 0; i < nr; i++)
   cpus->map[i] = -1;

  refcount_set(&cpus->refcnt, 1);
 }

 return cpus;
}
