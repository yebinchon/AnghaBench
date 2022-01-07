
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_stat_config {int dummy; } ;
struct TYPE_2__ {scalar_t__ system_wide; int threads; } ;
struct evsel {int counts; TYPE_1__ core; } ;


 int perf_counts (int ,int,int) ;
 int perf_evsel__nr_cpus (struct evsel*) ;
 int perf_thread_map__nr (int ) ;
 scalar_t__ process_counter_values (struct perf_stat_config*,struct evsel*,int,int,int ) ;

__attribute__((used)) static int process_counter_maps(struct perf_stat_config *config,
    struct evsel *counter)
{
 int nthreads = perf_thread_map__nr(counter->core.threads);
 int ncpus = perf_evsel__nr_cpus(counter);
 int cpu, thread;

 if (counter->core.system_wide)
  nthreads = 1;

 for (thread = 0; thread < nthreads; thread++) {
  for (cpu = 0; cpu < ncpus; cpu++) {
   if (process_counter_values(config, counter, cpu, thread,
         perf_counts(counter->counts, cpu, thread)))
    return -1;
  }
 }

 return 0;
}
