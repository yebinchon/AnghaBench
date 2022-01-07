
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_counts_values {int dummy; } ;
struct evsel {int core; int counts; } ;


 struct perf_counts_values* perf_counts (int ,int,int) ;
 int perf_evsel__read (int *,int,int,struct perf_counts_values*) ;

__attribute__((used)) static int
perf_evsel__read_one(struct evsel *evsel, int cpu, int thread)
{
 struct perf_counts_values *count = perf_counts(evsel->counts, cpu, thread);

 return perf_evsel__read(&evsel->core, cpu, thread, count);
}
