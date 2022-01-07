
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evsel {int idx; int tracking; int core; struct evlist* evlist; } ;
struct TYPE_2__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;


 int perf_evlist__add (TYPE_1__*,int *) ;
 int perf_evlist__set_id_pos (struct evlist*) ;

void evlist__add(struct evlist *evlist, struct evsel *entry)
{
 entry->evlist = evlist;
 entry->idx = evlist->core.nr_entries;
 entry->tracking = !entry->idx;

 perf_evlist__add(&evlist->core, &entry->core);

 if (evlist->core.nr_entries == 1)
  perf_evlist__set_id_pos(evlist);
}
