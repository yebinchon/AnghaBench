
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_event_symbol {struct perf_pmu_event_symbol* symbol; } ;


 struct perf_pmu_event_symbol* perf_pmu_events_list ;
 int perf_pmu_events_list_num ;
 int zfree (struct perf_pmu_event_symbol**) ;

__attribute__((used)) static void perf_pmu__parse_cleanup(void)
{
 if (perf_pmu_events_list_num > 0) {
  struct perf_pmu_event_symbol *p;
  int i;

  for (i = 0; i < perf_pmu_events_list_num; i++) {
   p = perf_pmu_events_list + i;
   zfree(&p->symbol);
  }
  zfree(&perf_pmu_events_list);
  perf_pmu_events_list_num = 0;
 }
}
