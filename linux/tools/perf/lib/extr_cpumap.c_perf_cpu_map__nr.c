
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; } ;



int perf_cpu_map__nr(const struct perf_cpu_map *cpus)
{
 return cpus ? cpus->nr : 1;
}
