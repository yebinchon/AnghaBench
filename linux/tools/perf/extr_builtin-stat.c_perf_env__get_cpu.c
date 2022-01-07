
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {int nr_cpus_avail; } ;
struct perf_cpu_map {int nr; int* map; } ;



__attribute__((used)) static inline int perf_env__get_cpu(struct perf_env *env, struct perf_cpu_map *map, int idx)
{
 int cpu;

 if (idx > map->nr)
  return -1;

 cpu = map->map[idx];

 if (cpu >= env->nr_cpus_avail)
  return -1;

 return cpu;
}
