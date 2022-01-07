
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ pmu; int cpu; } ;



__attribute__((used)) static bool exclusive_event_match(struct perf_event *e1, struct perf_event *e2)
{
 if ((e1->pmu == e2->pmu) &&
     (e1->cpu == e2->cpu ||
      e1->cpu == -1 ||
      e2->cpu == -1))
  return 1;
 return 0;
}
