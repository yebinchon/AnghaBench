
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int size; int config; int type; } ;
struct evsel {int dummy; } ;
struct TYPE_2__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;
typedef int attr ;


 int ENOMEM ;
 int PERF_COUNT_SW_DUMMY ;
 int PERF_TYPE_SOFTWARE ;
 int evlist__add (struct evlist*,struct evsel*) ;
 struct evsel* perf_evsel__new_idx (struct perf_event_attr*,int ) ;

int perf_evlist__add_dummy(struct evlist *evlist)
{
 struct perf_event_attr attr = {
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_DUMMY,
  .size = sizeof(attr),
 };
 struct evsel *evsel = perf_evsel__new_idx(&attr, evlist->core.nr_entries);

 if (evsel == ((void*)0))
  return -ENOMEM;

 evlist__add(evlist, evsel);
 return 0;
}
