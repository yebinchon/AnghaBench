
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int core; int * evlist; } ;
struct evlist {int core; } ;


 int perf_evlist__remove (int *,int *) ;

void evlist__remove(struct evlist *evlist, struct evsel *evsel)
{
 evsel->evlist = ((void*)0);
 perf_evlist__remove(&evlist->core, &evsel->core);
}
