
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
struct evsel {int dummy; } ;


 int evsel__open (struct evsel*,struct perf_cpu_map*,int *) ;

int perf_evsel__open_per_cpu(struct evsel *evsel,
        struct perf_cpu_map *cpus)
{
 return evsel__open(evsel, cpus, ((void*)0));
}
