
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_evsel {struct perf_stat_evsel* group_data; } ;
struct evsel {struct perf_stat_evsel* stats; } ;


 int zfree (struct perf_stat_evsel**) ;

__attribute__((used)) static void perf_evsel__free_stat_priv(struct evsel *evsel)
{
 struct perf_stat_evsel *ps = evsel->stats;

 if (ps)
  zfree(&ps->group_data);
 zfree(&evsel->stats);
}
