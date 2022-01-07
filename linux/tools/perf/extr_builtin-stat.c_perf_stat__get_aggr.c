
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_stat_config {TYPE_1__* cpus_aggr_map; } ;
struct perf_cpu_map {int nr; int* map; } ;
typedef int (* aggr_get_id_t ) (struct perf_stat_config*,struct perf_cpu_map*,int) ;
struct TYPE_2__ {int* map; } ;



__attribute__((used)) static int perf_stat__get_aggr(struct perf_stat_config *config,
          aggr_get_id_t get_id, struct perf_cpu_map *map, int idx)
{
 int cpu;

 if (idx >= map->nr)
  return -1;

 cpu = map->map[idx];

 if (config->cpus_aggr_map->map[cpu] == -1)
  config->cpus_aggr_map->map[cpu] = get_id(config, map, idx);

 return config->cpus_aggr_map->map[cpu];
}
