
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int * counts; } ;


 int perf_counts__delete (int *) ;

void perf_evsel__free_counts(struct evsel *evsel)
{
 perf_counts__delete(evsel->counts);
 evsel->counts = ((void*)0);
}
