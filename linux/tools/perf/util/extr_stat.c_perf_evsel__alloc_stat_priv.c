
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_evsel {int dummy; } ;
struct evsel {int * stats; } ;


 int ENOMEM ;
 int perf_evsel__reset_stat_priv (struct evsel*) ;
 int * zalloc (int) ;

__attribute__((used)) static int perf_evsel__alloc_stat_priv(struct evsel *evsel)
{
 evsel->stats = zalloc(sizeof(struct perf_stat_evsel));
 if (evsel->stats == ((void*)0))
  return -ENOMEM;
 perf_evsel__reset_stat_priv(evsel);
 return 0;
}
