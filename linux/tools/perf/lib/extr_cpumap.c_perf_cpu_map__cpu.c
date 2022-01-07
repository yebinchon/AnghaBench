
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;



int perf_cpu_map__cpu(const struct perf_cpu_map *cpus, int idx)
{
 if (idx < cpus->nr)
  return cpus->map[idx];

 return -1;
}
