
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_stat_config {int (* aggr_get_id ) (struct perf_stat_config*,int ,int) ;scalar_t__ aggr_mode; } ;
struct evsel {struct evlist* evlist; } ;
struct TYPE_3__ {int cpus; } ;
struct evlist {TYPE_1__ core; } ;
struct TYPE_4__ {int* map; } ;


 scalar_t__ AGGR_GLOBAL ;
 scalar_t__ AGGR_NONE ;
 TYPE_2__* evsel__cpus (struct evsel*) ;
 int perf_evsel__nr_cpus (struct evsel*) ;
 int stub1 (struct perf_stat_config*,int ,int) ;

__attribute__((used)) static int first_shadow_cpu(struct perf_stat_config *config,
       struct evsel *evsel, int id)
{
 struct evlist *evlist = evsel->evlist;
 int i;

 if (!config->aggr_get_id)
  return 0;

 if (config->aggr_mode == AGGR_NONE)
  return id;

 if (config->aggr_mode == AGGR_GLOBAL)
  return 0;

 for (i = 0; i < perf_evsel__nr_cpus(evsel); i++) {
  int cpu2 = evsel__cpus(evsel)->map[i];

  if (config->aggr_get_id(config, evlist->core.cpus, cpu2) == id)
   return cpu2;
 }
 return 0;
}
