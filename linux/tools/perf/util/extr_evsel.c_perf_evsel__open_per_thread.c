
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct evsel {int dummy; } ;


 int evsel__open (struct evsel*,int *,struct perf_thread_map*) ;

int perf_evsel__open_per_thread(struct evsel *evsel,
    struct perf_thread_map *threads)
{
 return evsel__open(evsel, ((void*)0), threads);
}
