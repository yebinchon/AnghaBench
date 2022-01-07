
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_info {int metric_name; int metric_expr; int snapshot; int per_pkg; int scale; int unit; } ;
struct perf_pmu {int type; scalar_t__ is_uncore; scalar_t__ default_config; } ;
struct perf_event_attr {int type; } ;
struct parse_events_state {int idx; struct parse_events_error* error; } ;
struct parse_events_error {int * str; } ;
struct list_head {int dummy; } ;
struct evsel {char* pmu_name; int use_uncore_alias; int config_terms; int percore; int metric_name; int metric_expr; int snapshot; int per_pkg; int scale; int unit; } ;
typedef int attr ;


 int EINVAL ;
 int ENOMEM ;
 int LIST_HEAD (int ) ;
 struct evsel* __add_event (struct list_head*,int *,struct perf_event_attr*,int *,struct perf_pmu*,int *,int,int *) ;
 scalar_t__ asprintf (int **,char*,char*) ;
 scalar_t__ config_attr (struct perf_event_attr*,struct list_head*,struct parse_events_error*,int ) ;
 int config_term_percore (int *) ;
 int config_term_pmu ;
 int config_terms ;
 int * get_config_name (struct list_head*) ;
 scalar_t__ get_config_terms (struct list_head*,int *) ;
 int memcpy (struct perf_event_attr*,scalar_t__,int) ;
 int memset (struct perf_event_attr*,int ,int) ;
 scalar_t__ perf_pmu__check_alias (struct perf_pmu*,struct list_head*,struct perf_pmu_info*) ;
 scalar_t__ perf_pmu__config (struct perf_pmu*,struct perf_event_attr*,struct list_head*,struct parse_events_error*) ;
 struct perf_pmu* perf_pmu__find (char*) ;

int parse_events_add_pmu(struct parse_events_state *parse_state,
    struct list_head *list, char *name,
    struct list_head *head_config,
    bool auto_merge_stats,
    bool use_alias)
{
 struct perf_event_attr attr;
 struct perf_pmu_info info;
 struct perf_pmu *pmu;
 struct evsel *evsel;
 struct parse_events_error *err = parse_state->error;
 bool use_uncore_alias;
 LIST_HEAD(config_terms);

 pmu = perf_pmu__find(name);
 if (!pmu) {
  if (asprintf(&err->str,
    "Cannot find PMU `%s'. Missing kernel support?",
    name) < 0)
   err->str = ((void*)0);
  return -EINVAL;
 }

 if (pmu->default_config) {
  memcpy(&attr, pmu->default_config,
         sizeof(struct perf_event_attr));
 } else {
  memset(&attr, 0, sizeof(attr));
 }

 use_uncore_alias = (pmu->is_uncore && use_alias);

 if (!head_config) {
  attr.type = pmu->type;
  evsel = __add_event(list, &parse_state->idx, &attr, ((void*)0), pmu, ((void*)0),
        auto_merge_stats, ((void*)0));
  if (evsel) {
   evsel->pmu_name = name;
   evsel->use_uncore_alias = use_uncore_alias;
   return 0;
  } else {
   return -ENOMEM;
  }
 }

 if (perf_pmu__check_alias(pmu, head_config, &info))
  return -EINVAL;





 if (config_attr(&attr, head_config, parse_state->error, config_term_pmu))
  return -EINVAL;

 if (get_config_terms(head_config, &config_terms))
  return -ENOMEM;

 if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
  return -EINVAL;

 evsel = __add_event(list, &parse_state->idx, &attr,
       get_config_name(head_config), pmu,
       &config_terms, auto_merge_stats, ((void*)0));
 if (evsel) {
  evsel->unit = info.unit;
  evsel->scale = info.scale;
  evsel->per_pkg = info.per_pkg;
  evsel->snapshot = info.snapshot;
  evsel->metric_expr = info.metric_expr;
  evsel->metric_name = info.metric_name;
  evsel->pmu_name = name;
  evsel->use_uncore_alias = use_uncore_alias;
  evsel->percore = config_term_percore(&evsel->config_terms);
 }

 return evsel ? 0 : -ENOMEM;
}
