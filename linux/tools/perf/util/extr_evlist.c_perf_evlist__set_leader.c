
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_entries; int entries; } ;
struct evlist {int nr_groups; TYPE_1__ core; } ;


 int __perf_evlist__set_leader (int *) ;

void perf_evlist__set_leader(struct evlist *evlist)
{
 if (evlist->core.nr_entries) {
  evlist->nr_groups = evlist->core.nr_entries > 1 ? 1 : 0;
  __perf_evlist__set_leader(&evlist->core.entries);
 }
}
