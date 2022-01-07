
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct perf_evlist {struct perf_thread_map* threads; struct perf_cpu_map* cpus; } ;
struct perf_cpu_map {int dummy; } ;


 struct perf_cpu_map* perf_cpu_map__get (struct perf_cpu_map*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int perf_evlist__propagate_maps (struct perf_evlist*) ;
 struct perf_thread_map* perf_thread_map__get (struct perf_thread_map*) ;
 int perf_thread_map__put (struct perf_thread_map*) ;

void perf_evlist__set_maps(struct perf_evlist *evlist,
      struct perf_cpu_map *cpus,
      struct perf_thread_map *threads)
{







 if (cpus != evlist->cpus) {
  perf_cpu_map__put(evlist->cpus);
  evlist->cpus = perf_cpu_map__get(cpus);
 }

 if (threads != evlist->threads) {
  perf_thread_map__put(evlist->threads);
  evlist->threads = perf_thread_map__get(threads);
 }

 perf_evlist__propagate_maps(evlist);
}
