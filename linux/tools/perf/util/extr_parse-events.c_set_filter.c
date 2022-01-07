
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_pmu {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 scalar_t__ PERF_TYPE_TRACEPOINT ;
 int fprintf (int ,char*) ;
 scalar_t__ perf_evsel__append_addr_filter (struct evsel*,char const*) ;
 scalar_t__ perf_evsel__append_tp_filter (struct evsel*,char const*) ;
 struct perf_pmu* perf_pmu__scan (struct perf_pmu*) ;
 int perf_pmu__scan_file (struct perf_pmu*,char*,char*,int*) ;
 int stderr ;

__attribute__((used)) static int set_filter(struct evsel *evsel, const void *arg)
{
 const char *str = arg;
 bool found = 0;
 int nr_addr_filters = 0;
 struct perf_pmu *pmu = ((void*)0);

 if (evsel == ((void*)0)) {
  fprintf(stderr,
   "--filter option should follow a -e tracepoint or HW tracer option\n");
  return -1;
 }

 if (evsel->core.attr.type == PERF_TYPE_TRACEPOINT) {
  if (perf_evsel__append_tp_filter(evsel, str) < 0) {
   fprintf(stderr,
    "not enough memory to hold filter string\n");
   return -1;
  }

  return 0;
 }

 while ((pmu = perf_pmu__scan(pmu)) != ((void*)0))
  if (pmu->type == evsel->core.attr.type) {
   found = 1;
   break;
  }

 if (found)
  perf_pmu__scan_file(pmu, "nr_addr_filters",
        "%d", &nr_addr_filters);

 if (!nr_addr_filters) {
  fprintf(stderr,
   "This CPU does not support address filtering\n");
  return -1;
 }

 if (perf_evsel__append_addr_filter(evsel, str) < 0) {
  fprintf(stderr,
   "not enough memory to hold filter string\n");
  return -1;
 }

 return 0;
}
