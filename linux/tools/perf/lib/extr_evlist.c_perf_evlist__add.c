
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int node; } ;
struct perf_evlist {int nr_entries; int entries; } ;


 int __perf_evlist__propagate_maps (struct perf_evlist*,struct perf_evsel*) ;
 int list_add_tail (int *,int *) ;

void perf_evlist__add(struct perf_evlist *evlist,
        struct perf_evsel *evsel)
{
 list_add_tail(&evsel->node, &evlist->entries);
 evlist->nr_entries += 1;
 __perf_evlist__propagate_maps(evlist, evsel);
}
