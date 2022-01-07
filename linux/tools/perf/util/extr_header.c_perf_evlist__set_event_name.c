
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {scalar_t__ name; int idx; } ;
struct evlist {int dummy; } ;


 struct evsel* perf_evlist__find_by_index (struct evlist*,int ) ;
 scalar_t__ strdup (scalar_t__) ;

__attribute__((used)) static void
perf_evlist__set_event_name(struct evlist *evlist,
       struct evsel *event)
{
 struct evsel *evsel;

 if (!event->name)
  return;

 evsel = perf_evlist__find_by_index(evlist, event->idx);
 if (!evsel)
  return;

 if (evsel->name)
  return;

 evsel->name = strdup(event->name);
}
