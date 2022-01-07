
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_evsel {int * res_stats; } ;
struct evsel {struct perf_stat_evsel* stats; } ;


 int init_stats (int *) ;
 int perf_stat_evsel_id_init (struct evsel*) ;

__attribute__((used)) static void perf_evsel__reset_stat_priv(struct evsel *evsel)
{
 int i;
 struct perf_stat_evsel *ps = evsel->stats;

 for (i = 0; i < 3; i++)
  init_stats(&ps->res_stats[i]);

 perf_stat_evsel_id_init(evsel);
}
