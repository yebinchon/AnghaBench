
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {int nr; } ;
struct perf_cpu_map {int nr; } ;
struct TYPE_2__ {struct perf_thread_map* threads; struct perf_cpu_map* cpus; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;


 int ENOMEM ;
 scalar_t__ perf_evsel__alloc_id (TYPE_1__*,int ,int ) ;
 int store_evsel_ids (struct evsel*,struct evlist*) ;

int perf_evsel__store_ids(struct evsel *evsel, struct evlist *evlist)
{
 struct perf_cpu_map *cpus = evsel->core.cpus;
 struct perf_thread_map *threads = evsel->core.threads;

 if (perf_evsel__alloc_id(&evsel->core, cpus->nr, threads->nr))
  return -ENOMEM;

 return store_evsel_ids(evsel, evlist);
}
