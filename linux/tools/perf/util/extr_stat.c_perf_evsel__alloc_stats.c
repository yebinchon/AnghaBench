
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int threads; } ;
struct evsel {TYPE_1__ core; } ;


 int ENOMEM ;
 scalar_t__ perf_evsel__alloc_counts (struct evsel*,int,int) ;
 scalar_t__ perf_evsel__alloc_prev_raw_counts (struct evsel*,int,int) ;
 scalar_t__ perf_evsel__alloc_stat_priv (struct evsel*) ;
 int perf_evsel__nr_cpus (struct evsel*) ;
 int perf_thread_map__nr (int ) ;

__attribute__((used)) static int perf_evsel__alloc_stats(struct evsel *evsel, bool alloc_raw)
{
 int ncpus = perf_evsel__nr_cpus(evsel);
 int nthreads = perf_thread_map__nr(evsel->core.threads);

 if (perf_evsel__alloc_stat_priv(evsel) < 0 ||
     perf_evsel__alloc_counts(evsel, ncpus, nthreads) < 0 ||
     (alloc_raw && perf_evsel__alloc_prev_raw_counts(evsel, ncpus, nthreads) < 0))
  return -ENOMEM;

 return 0;
}
