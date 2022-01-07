
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_counts {int dummy; } ;
struct evsel {struct perf_counts* prev_raw_counts; } ;


 int ENOMEM ;
 struct perf_counts* perf_counts__new (int,int) ;

__attribute__((used)) static int perf_evsel__alloc_prev_raw_counts(struct evsel *evsel,
          int ncpus, int nthreads)
{
 struct perf_counts *counts;

 counts = perf_counts__new(ncpus, nthreads);
 if (counts)
  evsel->prev_raw_counts = counts;

 return counts ? 0 : -ENOMEM;
}
