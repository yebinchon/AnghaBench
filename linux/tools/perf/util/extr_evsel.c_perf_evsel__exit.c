
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int threads; int own_cpus; int cpus; int node; } ;
struct evsel {int name; int group_name; TYPE_2__ core; int cgrp; int * evlist; } ;
struct TYPE_4__ {int (* fini ) (struct evsel*) ;} ;


 int assert (int ) ;
 int cgroup__put (int ) ;
 int list_empty (int *) ;
 int perf_cpu_map__put (int ) ;
 int perf_evsel__free_config_terms (struct evsel*) ;
 int perf_evsel__free_counts (struct evsel*) ;
 int perf_evsel__free_fd (TYPE_2__*) ;
 int perf_evsel__free_id (TYPE_2__*) ;
 TYPE_1__ perf_evsel__object ;
 int perf_thread_map__put (int ) ;
 int stub1 (struct evsel*) ;
 int zfree (int *) ;

void perf_evsel__exit(struct evsel *evsel)
{
 assert(list_empty(&evsel->core.node));
 assert(evsel->evlist == ((void*)0));
 perf_evsel__free_counts(evsel);
 perf_evsel__free_fd(&evsel->core);
 perf_evsel__free_id(&evsel->core);
 perf_evsel__free_config_terms(evsel);
 cgroup__put(evsel->cgrp);
 perf_cpu_map__put(evsel->core.cpus);
 perf_cpu_map__put(evsel->core.own_cpus);
 perf_thread_map__put(evsel->core.threads);
 zfree(&evsel->group_name);
 zfree(&evsel->name);
 perf_evsel__object.fini(evsel);
}
