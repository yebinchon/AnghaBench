
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evsel {int dummy; } ;
struct TYPE_2__ {int cpus; } ;
struct evlist {TYPE_1__ core; } ;


 int perf_cpu_map__empty (int ) ;
 int perf_evlist__enable_event_cpu (struct evlist*,struct evsel*,int) ;
 int perf_evlist__enable_event_thread (struct evlist*,struct evsel*,int) ;

int perf_evlist__enable_event_idx(struct evlist *evlist,
      struct evsel *evsel, int idx)
{
 bool per_cpu_mmaps = !perf_cpu_map__empty(evlist->core.cpus);

 if (per_cpu_mmaps)
  return perf_evlist__enable_event_cpu(evlist, evsel, idx);
 else
  return perf_evlist__enable_event_thread(evlist, evsel, idx);
}
