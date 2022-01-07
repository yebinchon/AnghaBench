
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_pmu_event_symbol {int symbol; } ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int
comp_pmu(const void *p1, const void *p2)
{
 struct perf_pmu_event_symbol *pmu1 = (struct perf_pmu_event_symbol *) p1;
 struct perf_pmu_event_symbol *pmu2 = (struct perf_pmu_event_symbol *) p2;

 return strcasecmp(pmu1->symbol, pmu2->symbol);
}
