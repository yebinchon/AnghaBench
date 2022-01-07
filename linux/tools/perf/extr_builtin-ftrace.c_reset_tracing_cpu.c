
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int set_tracing_cpumask (struct perf_cpu_map*) ;

__attribute__((used)) static int reset_tracing_cpu(void)
{
 struct perf_cpu_map *cpumap = perf_cpu_map__new(((void*)0));
 int ret;

 ret = set_tracing_cpumask(cpumap);
 perf_cpu_map__put(cpumap);
 return ret;
}
