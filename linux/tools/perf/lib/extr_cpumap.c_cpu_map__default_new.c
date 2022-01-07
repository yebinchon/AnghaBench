
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int* map; int nr; int refcnt; } ;


 int _SC_NPROCESSORS_ONLN ;
 struct perf_cpu_map* malloc (int) ;
 int refcount_set (int *,int) ;
 int sysconf (int ) ;

__attribute__((used)) static struct perf_cpu_map *cpu_map__default_new(void)
{
 struct perf_cpu_map *cpus;
 int nr_cpus;

 nr_cpus = sysconf(_SC_NPROCESSORS_ONLN);
 if (nr_cpus < 0)
  return ((void*)0);

 cpus = malloc(sizeof(*cpus) + nr_cpus * sizeof(int));
 if (cpus != ((void*)0)) {
  int i;

  for (i = 0; i < nr_cpus; ++i)
   cpus->map[i] = i;

  cpus->nr = nr_cpus;
  refcount_set(&cpus->refcnt, 1);
 }

 return cpus;
}
