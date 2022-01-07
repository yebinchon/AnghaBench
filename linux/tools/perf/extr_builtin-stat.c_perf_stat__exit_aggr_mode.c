
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cpus_aggr_map; int * aggr_map; } ;


 int perf_cpu_map__put (int *) ;
 TYPE_1__ stat_config ;

__attribute__((used)) static void perf_stat__exit_aggr_mode(void)
{
 perf_cpu_map__put(stat_config.aggr_map);
 perf_cpu_map__put(stat_config.cpus_aggr_map);
 stat_config.aggr_map = ((void*)0);
 stat_config.cpus_aggr_map = ((void*)0);
}
