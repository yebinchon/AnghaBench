
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {scalar_t__ ids; int id; int * sample_id; } ;


 int xyarray__delete (int *) ;
 int zfree (int *) ;

void perf_evsel__free_id(struct perf_evsel *evsel)
{
 xyarray__delete(evsel->sample_id);
 evsel->sample_id = ((void*)0);
 zfree(&evsel->id);
 evsel->ids = 0;
}
