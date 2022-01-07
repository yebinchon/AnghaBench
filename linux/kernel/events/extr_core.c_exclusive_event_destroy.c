
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int exclusive_cnt; } ;
struct perf_event {int attach_state; struct pmu* pmu; } ;


 int PERF_ATTACH_TASK ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int is_exclusive_pmu (struct pmu*) ;

__attribute__((used)) static void exclusive_event_destroy(struct perf_event *event)
{
 struct pmu *pmu = event->pmu;

 if (!is_exclusive_pmu(pmu))
  return;


 if (event->attach_state & PERF_ATTACH_TASK)
  atomic_dec(&pmu->exclusive_cnt);
 else
  atomic_inc(&pmu->exclusive_cnt);
}
