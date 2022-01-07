
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * fd; } ;


 int perf_evsel__close_fd (struct perf_evsel*) ;
 int perf_evsel__free_fd (struct perf_evsel*) ;

void perf_evsel__close(struct perf_evsel *evsel)
{
 if (evsel->fd == ((void*)0))
  return;

 perf_evsel__close_fd(evsel);
 perf_evsel__free_fd(evsel);
}
