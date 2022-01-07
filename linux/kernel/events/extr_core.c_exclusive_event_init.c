
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int exclusive_cnt; } ;
struct perf_event {int attach_state; struct pmu* pmu; } ;


 int EBUSY ;
 int PERF_ATTACH_TASK ;
 int atomic_dec_unless_positive (int *) ;
 int atomic_inc_unless_negative (int *) ;
 int is_exclusive_pmu (struct pmu*) ;

__attribute__((used)) static int exclusive_event_init(struct perf_event *event)
{
 struct pmu *pmu = event->pmu;

 if (!is_exclusive_pmu(pmu))
  return 0;
 if (event->attach_state & PERF_ATTACH_TASK) {
  if (!atomic_inc_unless_negative(&pmu->exclusive_cnt))
   return -EBUSY;
 } else {
  if (!atomic_dec_unless_positive(&pmu->exclusive_cnt))
   return -EBUSY;
 }

 return 0;
}
