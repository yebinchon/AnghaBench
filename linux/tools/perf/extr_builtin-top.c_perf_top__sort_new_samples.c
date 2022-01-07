
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_top {scalar_t__ drop; scalar_t__ lost; TYPE_1__* evlist; int * sym_evsel; } ;
struct TYPE_2__ {int * selected; } ;


 int perf_top__resort_hists (struct perf_top*) ;
 int pr_warning (char*) ;

__attribute__((used)) static void perf_top__sort_new_samples(void *arg)
{
 struct perf_top *t = arg;

 if (t->evlist->selected != ((void*)0))
  t->sym_evsel = t->evlist->selected;

 perf_top__resort_hists(t);

 if (t->lost || t->drop)
  pr_warning("Too slow to read ring buffer (change period (-c/-F) or limit CPUs (-C)\n");
}
