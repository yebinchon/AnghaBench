
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;



int perf_cpu_map__idx(struct perf_cpu_map *cpus, int cpu)
{
 int i;

 for (i = 0; i < cpus->nr; ++i) {
  if (cpus->map[i] == cpu)
   return i;
 }

 return -1;
}
