
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {scalar_t__ nr_entries; int entries; int * heads; } ;


 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int PERF_EVLIST__HLIST_SIZE ;

void perf_evlist__init(struct perf_evlist *evlist)
{
 int i;

 for (i = 0; i < PERF_EVLIST__HLIST_SIZE; ++i)
  INIT_HLIST_HEAD(&evlist->heads[i]);
 INIT_LIST_HEAD(&evlist->entries);
 evlist->nr_entries = 0;
}
