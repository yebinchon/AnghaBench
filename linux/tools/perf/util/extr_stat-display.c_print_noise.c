
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_evsel {int * res_stats; } ;
struct perf_stat_config {int run_count; } ;
struct evsel {struct perf_stat_evsel* stats; } ;


 int print_noise_pct (struct perf_stat_config*,int ,double) ;
 int stddev_stats (int *) ;

__attribute__((used)) static void print_noise(struct perf_stat_config *config,
   struct evsel *evsel, double avg)
{
 struct perf_stat_evsel *ps;

 if (config->run_count == 1)
  return;

 ps = evsel->stats;
 print_noise_pct(config, stddev_stats(&ps->res_stats[0]), avg);
}
