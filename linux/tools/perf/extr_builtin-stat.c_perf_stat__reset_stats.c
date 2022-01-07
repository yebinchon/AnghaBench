
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats_num; int * stats; } ;


 int evsel_list ;
 int perf_evlist__reset_stats (int ) ;
 int perf_stat__reset_shadow_per_stat (int *) ;
 int perf_stat__reset_shadow_stats () ;
 TYPE_1__ stat_config ;

__attribute__((used)) static void perf_stat__reset_stats(void)
{
 int i;

 perf_evlist__reset_stats(evsel_list);
 perf_stat__reset_shadow_stats();

 for (i = 0; i < stat_config.stats_num; i++)
  perf_stat__reset_shadow_per_stat(&stat_config.stats[i]);
}
