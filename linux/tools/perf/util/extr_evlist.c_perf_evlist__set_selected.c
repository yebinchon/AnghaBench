
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;
struct evlist {struct evsel* selected; } ;



void perf_evlist__set_selected(struct evlist *evlist,
          struct evsel *evsel)
{
 evlist->selected = evsel;
}
