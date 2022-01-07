
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {scalar_t__ own_cpus; scalar_t__ cpus; int threads; } ;
struct perf_evlist {scalar_t__ cpus; int threads; scalar_t__ has_user_cpus; } ;


 void* perf_cpu_map__get (scalar_t__) ;
 int perf_cpu_map__put (scalar_t__) ;
 int perf_thread_map__get (int ) ;
 int perf_thread_map__put (int ) ;

__attribute__((used)) static void __perf_evlist__propagate_maps(struct perf_evlist *evlist,
       struct perf_evsel *evsel)
{




 if (!evsel->own_cpus || evlist->has_user_cpus) {
  perf_cpu_map__put(evsel->cpus);
  evsel->cpus = perf_cpu_map__get(evlist->cpus);
 } else if (evsel->cpus != evsel->own_cpus) {
  perf_cpu_map__put(evsel->cpus);
  evsel->cpus = perf_cpu_map__get(evsel->own_cpus);
 }

 perf_thread_map__put(evsel->threads);
 evsel->threads = perf_thread_map__get(evlist->threads);
}
