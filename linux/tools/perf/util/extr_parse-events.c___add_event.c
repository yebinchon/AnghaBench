
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_pmu {int is_uncore; struct perf_cpu_map* cpus; } ;
struct perf_event_attr {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int system_wide; int node; void* own_cpus; void* cpus; } ;
struct evsel {int auto_merge_stats; TYPE_1__ core; int config_terms; int name; } ;


 int event_attr_init (struct perf_event_attr*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_splice (struct list_head*,int *) ;
 void* perf_cpu_map__get (struct perf_cpu_map*) ;
 struct perf_cpu_map* perf_cpu_map__new (char const*) ;
 struct evsel* perf_evsel__new_idx (struct perf_event_attr*,int) ;
 int strdup (char*) ;

__attribute__((used)) static struct evsel *
__add_event(struct list_head *list, int *idx,
     struct perf_event_attr *attr,
     char *name, struct perf_pmu *pmu,
     struct list_head *config_terms, bool auto_merge_stats,
     const char *cpu_list)
{
 struct evsel *evsel;
 struct perf_cpu_map *cpus = pmu ? pmu->cpus :
          cpu_list ? perf_cpu_map__new(cpu_list) : ((void*)0);

 event_attr_init(attr);

 evsel = perf_evsel__new_idx(attr, *idx);
 if (!evsel)
  return ((void*)0);

 (*idx)++;
 evsel->core.cpus = perf_cpu_map__get(cpus);
 evsel->core.own_cpus = perf_cpu_map__get(cpus);
 evsel->core.system_wide = pmu ? pmu->is_uncore : 0;
 evsel->auto_merge_stats = auto_merge_stats;

 if (name)
  evsel->name = strdup(name);

 if (config_terms)
  list_splice(config_terms, &evsel->config_terms);

 list_add_tail(&evsel->core.node, list);
 return evsel;
}
