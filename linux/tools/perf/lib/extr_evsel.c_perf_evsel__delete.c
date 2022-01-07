
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int free (struct perf_evsel*) ;

void perf_evsel__delete(struct perf_evsel *evsel)
{
 free(evsel);
}
