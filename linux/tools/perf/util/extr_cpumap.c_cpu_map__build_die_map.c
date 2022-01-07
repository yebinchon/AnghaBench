
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 int cpu_map__build_map (struct perf_cpu_map*,struct perf_cpu_map**,int ,int *) ;
 int cpu_map__get_die ;

int cpu_map__build_die_map(struct perf_cpu_map *cpus, struct perf_cpu_map **diep)
{
 return cpu_map__build_map(cpus, diep, cpu_map__get_die, ((void*)0));
}
