
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int * counts; } ;


 int ENOMEM ;
 int * perf_counts__new (int,int) ;

int perf_evsel__alloc_counts(struct evsel *evsel, int ncpus, int nthreads)
{
 evsel->counts = perf_counts__new(ncpus, nthreads);
 return evsel->counts != ((void*)0) ? 0 : -ENOMEM;
}
