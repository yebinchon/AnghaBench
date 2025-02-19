
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct perf_event_attr {int config; int type; } ;
struct parse_events_error {int dummy; } ;
struct option {TYPE_3__** value; } ;
struct TYPE_6__ {int nr_entries; } ;
struct TYPE_8__ {TYPE_1__ core; } ;
struct TYPE_7__ {int metric_only; scalar_t__ aggr_mode; int metric_events; scalar_t__ null_run; } ;


 scalar_t__ AGGR_CORE ;
 scalar_t__ AGGR_GLOBAL ;
 int FREEZE_ON_SMI_PATH ;
 int PERF_COUNT_HW_BRANCH_INSTRUCTIONS ;
 int PERF_COUNT_HW_BRANCH_MISSES ;
 int PERF_COUNT_HW_CACHE_DTLB ;
 int PERF_COUNT_HW_CACHE_ITLB ;
 int PERF_COUNT_HW_CACHE_L1D ;
 int PERF_COUNT_HW_CACHE_L1I ;
 int PERF_COUNT_HW_CACHE_LL ;
 int PERF_COUNT_HW_CACHE_OP_PREFETCH ;
 int PERF_COUNT_HW_CACHE_OP_READ ;
 int PERF_COUNT_HW_CACHE_RESULT_ACCESS ;
 int PERF_COUNT_HW_CACHE_RESULT_MISS ;
 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_COUNT_HW_INSTRUCTIONS ;
 int PERF_COUNT_HW_STALLED_CYCLES_BACKEND ;
 int PERF_COUNT_HW_STALLED_CYCLES_FRONTEND ;
 int PERF_COUNT_SW_CONTEXT_SWITCHES ;
 int PERF_COUNT_SW_CPU_CLOCK ;
 int PERF_COUNT_SW_CPU_MIGRATIONS ;
 int PERF_COUNT_SW_PAGE_FAULTS ;
 int PERF_COUNT_SW_TASK_CLOCK ;
 int PERF_TYPE_HARDWARE ;
 int PERF_TYPE_HW_CACHE ;
 int PERF_TYPE_SOFTWARE ;
 int arch_topdown_check_group (int*) ;
 int arch_topdown_group_warn () ;
 int detailed_run ;
 TYPE_3__* evsel_list ;
 int force_metric_only ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ metricgroup__has_metric (char*) ;
 int metricgroup__parse_groups (struct option*,char*,int *) ;
 scalar_t__ nr_cgroups ;
 int parse_events (TYPE_3__*,char*,struct parse_events_error*) ;
 int parse_events_print_error (struct parse_events_error*,char*) ;
 int perf_evlist__add_default_attrs (TYPE_3__*,struct perf_event_attr*) ;
 scalar_t__ pmu_have_event (char*,char*) ;
 int pr_err (char*) ;
 scalar_t__ smi_cost ;
 char* smi_cost_attrs ;
 int smi_reset ;
 TYPE_2__ stat_config ;
 int stderr ;
 scalar_t__ sysfs__read_int (int ,int*) ;
 scalar_t__ sysfs__write_int (int ,int) ;
 int target ;
 scalar_t__ target__has_cpu (int *) ;
 scalar_t__* topdown_attrs ;
 scalar_t__ topdown_filter_events (scalar_t__*,char**,int ) ;
 scalar_t__ topdown_run ;
 char* transaction_attrs ;
 char* transaction_limited_attrs ;
 scalar_t__ transaction_run ;

__attribute__((used)) static int add_default_attributes(void)
{
 int err;
 struct perf_event_attr default_attrs0[] = {

  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_TASK_CLOCK },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_CONTEXT_SWITCHES },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_CPU_MIGRATIONS },
  { .type = PERF_TYPE_SOFTWARE, .config = PERF_COUNT_SW_PAGE_FAULTS },

  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_CPU_CYCLES },
};
 struct perf_event_attr frontend_attrs[] = {
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_STALLED_CYCLES_FRONTEND },
};
 struct perf_event_attr backend_attrs[] = {
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_STALLED_CYCLES_BACKEND },
};
 struct perf_event_attr default_attrs1[] = {
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_INSTRUCTIONS },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_BRANCH_INSTRUCTIONS },
  { .type = PERF_TYPE_HARDWARE, .config = PERF_COUNT_HW_BRANCH_MISSES },

};




 struct perf_event_attr detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_LL << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_LL << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },
};




 struct perf_event_attr very_detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1I << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1I << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_DTLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_DTLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_ITLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_ITLB << 0 |
 (PERF_COUNT_HW_CACHE_OP_READ << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },

};




 struct perf_event_attr very_very_detailed_attrs[] = {

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_PREFETCH << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16) },

  { .type = PERF_TYPE_HW_CACHE,
    .config =
  PERF_COUNT_HW_CACHE_L1D << 0 |
 (PERF_COUNT_HW_CACHE_OP_PREFETCH << 8) |
 (PERF_COUNT_HW_CACHE_RESULT_MISS << 16) },
};
 struct parse_events_error errinfo;


 if (stat_config.null_run)
  return 0;

 if (transaction_run) {





  if (metricgroup__has_metric("transaction")) {
   struct option opt = { .value = &evsel_list };

   return metricgroup__parse_groups(&opt, "transaction",
        &stat_config.metric_events);
  }

  if (pmu_have_event("cpu", "cycles-ct") &&
      pmu_have_event("cpu", "el-start"))
   err = parse_events(evsel_list, transaction_attrs,
        &errinfo);
  else
   err = parse_events(evsel_list,
        transaction_limited_attrs,
        &errinfo);
  if (err) {
   fprintf(stderr, "Cannot set up transaction events\n");
   parse_events_print_error(&errinfo, transaction_attrs);
   return -1;
  }
  return 0;
 }

 if (smi_cost) {
  int smi;

  if (sysfs__read_int(FREEZE_ON_SMI_PATH, &smi) < 0) {
   fprintf(stderr, "freeze_on_smi is not supported.\n");
   return -1;
  }

  if (!smi) {
   if (sysfs__write_int(FREEZE_ON_SMI_PATH, 1) < 0) {
    fprintf(stderr, "Failed to set freeze_on_smi.\n");
    return -1;
   }
   smi_reset = 1;
  }

  if (pmu_have_event("msr", "aperf") &&
      pmu_have_event("msr", "smi")) {
   if (!force_metric_only)
    stat_config.metric_only = 1;
   err = parse_events(evsel_list, smi_cost_attrs, &errinfo);
  } else {
   fprintf(stderr, "To measure SMI cost, it needs "
    "msr/aperf/, msr/smi/ and cpu/cycles/ support\n");
   parse_events_print_error(&errinfo, smi_cost_attrs);
   return -1;
  }
  if (err) {
   fprintf(stderr, "Cannot set up SMI cost events\n");
   return -1;
  }
  return 0;
 }

 if (topdown_run) {
  char *str = ((void*)0);
  bool warn = 0;

  if (stat_config.aggr_mode != AGGR_GLOBAL &&
      stat_config.aggr_mode != AGGR_CORE) {
   pr_err("top down event configuration requires --per-core mode\n");
   return -1;
  }
  stat_config.aggr_mode = AGGR_CORE;
  if (nr_cgroups || !target__has_cpu(&target)) {
   pr_err("top down event configuration requires system-wide mode (-a)\n");
   return -1;
  }

  if (!force_metric_only)
   stat_config.metric_only = 1;
  if (topdown_filter_events(topdown_attrs, &str,
    arch_topdown_check_group(&warn)) < 0) {
   pr_err("Out of memory\n");
   return -1;
  }
  if (topdown_attrs[0] && str) {
   if (warn)
    arch_topdown_group_warn();
   err = parse_events(evsel_list, str, &errinfo);
   if (err) {
    fprintf(stderr,
     "Cannot set up top down events %s: %d\n",
     str, err);
    parse_events_print_error(&errinfo, str);
    free(str);
    return -1;
   }
  } else {
   fprintf(stderr, "System does not support topdown\n");
   return -1;
  }
  free(str);
 }

 if (!evsel_list->core.nr_entries) {
  if (target__has_cpu(&target))
   default_attrs0[0].config = PERF_COUNT_SW_CPU_CLOCK;

  if (perf_evlist__add_default_attrs(evsel_list, default_attrs0) < 0)
   return -1;
  if (pmu_have_event("cpu", "stalled-cycles-frontend")) {
   if (perf_evlist__add_default_attrs(evsel_list,
      frontend_attrs) < 0)
    return -1;
  }
  if (pmu_have_event("cpu", "stalled-cycles-backend")) {
   if (perf_evlist__add_default_attrs(evsel_list,
      backend_attrs) < 0)
    return -1;
  }
  if (perf_evlist__add_default_attrs(evsel_list, default_attrs1) < 0)
   return -1;
 }



 if (detailed_run < 1)
  return 0;


 if (perf_evlist__add_default_attrs(evsel_list, detailed_attrs) < 0)
  return -1;

 if (detailed_run < 2)
  return 0;


 if (perf_evlist__add_default_attrs(evsel_list, very_detailed_attrs) < 0)
  return -1;

 if (detailed_run < 3)
  return 0;


 return perf_evlist__add_default_attrs(evsel_list, very_very_detailed_attrs);
}
