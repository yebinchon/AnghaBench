
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int disabled; int core; } ;


 int perf_evsel__disable (int *) ;

int evsel__disable(struct evsel *evsel)
{
 int err = perf_evsel__disable(&evsel->core);






 if (!err)
  evsel->disabled = 1;

 return err;
}
