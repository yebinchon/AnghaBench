
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 int EACCES ;
 int TEST_FAIL ;
 int TEST_OK ;
 int TEST_SKIP ;
 struct evsel* evlist__last (struct evlist*) ;
 struct perf_cpu_map* perf_cpu_map__new (char*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int perf_evsel__open_per_cpu (struct evsel*,struct perf_cpu_map*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int attach__cpu_enabled(struct evlist *evlist)
{
 struct evsel *evsel = evlist__last(evlist);
 struct perf_cpu_map *cpus;
 int err;

 pr_debug("attaching to CPU 0 as enabled\n");

 cpus = perf_cpu_map__new("0");
 if (cpus == ((void*)0)) {
  pr_debug("failed to call perf_cpu_map__new\n");
  return -1;
 }

 err = perf_evsel__open_per_cpu(evsel, cpus);
 if (err == -EACCES)
  return TEST_SKIP;

 perf_cpu_map__put(cpus);
 return err ? TEST_FAIL : TEST_OK;
}
