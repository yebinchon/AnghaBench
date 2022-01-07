
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {int dummy; } ;
struct perf_cpu_map {int dummy; } ;


 int perf_stat__get_aggr (struct perf_stat_config*,int ,struct perf_cpu_map*,int) ;
 int perf_stat__get_die ;

__attribute__((used)) static int perf_stat__get_die_cached(struct perf_stat_config *config,
     struct perf_cpu_map *map, int idx)
{
 return perf_stat__get_aggr(config, perf_stat__get_die, map, idx);
}
