
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_event_symbol {int type; int symbol; } ;
typedef enum perf_pmu_event_symbol_type { ____Placeholder_perf_pmu_event_symbol_type } perf_pmu_event_symbol_type ;


 int PMU_EVENT_SYMBOL_ERR ;
 struct perf_pmu_event_symbol* bsearch (struct perf_pmu_event_symbol*,int ,size_t,int,int ) ;
 int comp_pmu ;
 int perf_pmu__parse_init () ;
 int perf_pmu_events_list ;
 scalar_t__ perf_pmu_events_list_num ;
 int strcmp (char const*,char*) ;
 int strdup (char const*) ;
 int zfree (int *) ;

enum perf_pmu_event_symbol_type
perf_pmu__parse_check(const char *name)
{
 struct perf_pmu_event_symbol p, *r;


 if (perf_pmu_events_list_num == 0)
  perf_pmu__parse_init();





 if ((perf_pmu_events_list_num <= 0) || !strcmp(name, "cpu"))
  return PMU_EVENT_SYMBOL_ERR;

 p.symbol = strdup(name);
 r = bsearch(&p, perf_pmu_events_list,
   (size_t) perf_pmu_events_list_num,
   sizeof(struct perf_pmu_event_symbol), comp_pmu);
 zfree(&p.symbol);
 return r ? r->type : PMU_EVENT_SYMBOL_ERR;
}
