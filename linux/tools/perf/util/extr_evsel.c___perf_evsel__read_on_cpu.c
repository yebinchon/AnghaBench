
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_counts_values {int dummy; } ;
struct evsel {int * counts; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FD (struct evsel*,int,int) ;
 int errno ;
 struct perf_counts_values* perf_counts (int *,int,int) ;
 int perf_counts_values__scale (struct perf_counts_values*,int,int *) ;
 scalar_t__ perf_evsel__alloc_counts (struct evsel*,int,int) ;
 int perf_evsel__compute_deltas (struct evsel*,int,int,struct perf_counts_values*) ;
 scalar_t__ readn (scalar_t__,struct perf_counts_values*,size_t) ;

int __perf_evsel__read_on_cpu(struct evsel *evsel,
         int cpu, int thread, bool scale)
{
 struct perf_counts_values count;
 size_t nv = scale ? 3 : 1;

 if (FD(evsel, cpu, thread) < 0)
  return -EINVAL;

 if (evsel->counts == ((void*)0) && perf_evsel__alloc_counts(evsel, cpu + 1, thread + 1) < 0)
  return -ENOMEM;

 if (readn(FD(evsel, cpu, thread), &count, nv * sizeof(u64)) <= 0)
  return -errno;

 perf_evsel__compute_deltas(evsel, cpu, thread, &count);
 perf_counts_values__scale(&count, scale, ((void*)0));
 *perf_counts(evsel->counts, cpu, thread) = count;
 return 0;
}
