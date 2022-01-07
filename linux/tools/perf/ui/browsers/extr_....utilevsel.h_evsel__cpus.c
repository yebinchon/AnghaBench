
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
struct evsel {int core; } ;


 struct perf_cpu_map* perf_evsel__cpus (int *) ;

__attribute__((used)) static inline struct perf_cpu_map *evsel__cpus(struct evsel *evsel)
{
 return perf_evsel__cpus(&evsel->core);
}
