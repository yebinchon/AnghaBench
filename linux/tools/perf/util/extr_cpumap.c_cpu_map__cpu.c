
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int* map; } ;



int cpu_map__cpu(struct perf_cpu_map *cpus, int idx)
{
 return cpus->map[idx];
}
