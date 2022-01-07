
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int disabled; int core; } ;


 int perf_evsel__enable (int *) ;

int evsel__enable(struct evsel *evsel)
{
 int err = perf_evsel__enable(&evsel->core);

 if (!err)
  evsel->disabled = 0;

 return err;
}
