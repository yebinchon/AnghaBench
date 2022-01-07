
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int core; } ;


 int perf_evsel__close (int *) ;
 int perf_evsel__free_id (int *) ;

void evsel__close(struct evsel *evsel)
{
 perf_evsel__close(&evsel->core);
 perf_evsel__free_id(&evsel->core);
}
