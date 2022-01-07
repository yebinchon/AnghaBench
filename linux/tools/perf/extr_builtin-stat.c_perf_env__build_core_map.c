
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int dummy; } ;
struct perf_cpu_map {int dummy; } ;


 int cpu_map__build_map (struct perf_cpu_map*,struct perf_cpu_map**,int ,struct perf_env*) ;
 int perf_env__get_core ;

__attribute__((used)) static int perf_env__build_core_map(struct perf_env *env, struct perf_cpu_map *cpus,
        struct perf_cpu_map **corep)
{
 return cpu_map__build_map(cpus, corep, perf_env__get_core, env);
}
