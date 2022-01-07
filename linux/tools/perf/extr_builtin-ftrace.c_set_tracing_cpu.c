
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_ftrace {int target; TYPE_2__* evlist; } ;
struct perf_cpu_map {int dummy; } ;
struct TYPE_3__ {struct perf_cpu_map* cpus; } ;
struct TYPE_4__ {TYPE_1__ core; } ;


 int set_tracing_cpumask (struct perf_cpu_map*) ;
 int target__has_cpu (int *) ;

__attribute__((used)) static int set_tracing_cpu(struct perf_ftrace *ftrace)
{
 struct perf_cpu_map *cpumap = ftrace->evlist->core.cpus;

 if (!target__has_cpu(&ftrace->target))
  return 0;

 return set_tracing_cpumask(cpumap);
}
