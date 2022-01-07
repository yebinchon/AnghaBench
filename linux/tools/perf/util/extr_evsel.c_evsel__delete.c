
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int free (struct evsel*) ;
 int perf_evsel__exit (struct evsel*) ;

void evsel__delete(struct evsel *evsel)
{
 perf_evsel__exit(evsel);
 free(evsel);
}
