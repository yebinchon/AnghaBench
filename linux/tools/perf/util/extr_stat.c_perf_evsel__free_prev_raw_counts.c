
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int * prev_raw_counts; } ;


 int perf_counts__delete (int *) ;

__attribute__((used)) static void perf_evsel__free_prev_raw_counts(struct evsel *evsel)
{
 perf_counts__delete(evsel->prev_raw_counts);
 evsel->prev_raw_counts = ((void*)0);
}
