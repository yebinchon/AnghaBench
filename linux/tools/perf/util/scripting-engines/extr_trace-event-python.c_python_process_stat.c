
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct perf_thread_map {int nr; } ;
struct perf_stat_config {scalar_t__ aggr_mode; } ;
struct perf_cpu_map {int nr; int* map; } ;
struct TYPE_3__ {struct perf_cpu_map* cpus; struct perf_thread_map* threads; } ;
struct evsel {TYPE_2__* counts; TYPE_1__ core; } ;
struct TYPE_4__ {int aggr; } ;


 scalar_t__ AGGR_GLOBAL ;
 int * perf_counts (TYPE_2__*,int,int) ;
 int perf_thread_map__pid (struct perf_thread_map*,int) ;
 int process_stat (struct evsel*,int,int,int ,int *) ;

__attribute__((used)) static void python_process_stat(struct perf_stat_config *config,
    struct evsel *counter, u64 tstamp)
{
 struct perf_thread_map *threads = counter->core.threads;
 struct perf_cpu_map *cpus = counter->core.cpus;
 int cpu, thread;

 if (config->aggr_mode == AGGR_GLOBAL) {
  process_stat(counter, -1, -1, tstamp,
        &counter->counts->aggr);
  return;
 }

 for (thread = 0; thread < threads->nr; thread++) {
  for (cpu = 0; cpu < cpus->nr; cpu++) {
   process_stat(counter, cpus->map[cpu],
         perf_thread_map__pid(threads, thread), tstamp,
         perf_counts(counter->counts, cpu, thread));
  }
 }
}
