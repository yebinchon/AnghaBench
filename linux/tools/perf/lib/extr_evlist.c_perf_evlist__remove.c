
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int node; } ;
struct perf_evlist {int nr_entries; } ;


 int list_del_init (int *) ;

void perf_evlist__remove(struct perf_evlist *evlist,
    struct perf_evsel *evsel)
{
 list_del_init(&evsel->node);
 evlist->nr_entries -= 1;
}
