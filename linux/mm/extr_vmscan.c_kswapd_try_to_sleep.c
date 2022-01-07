
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kswapd_wait; int node_id; int kswapd_order; int kswapd_classzone_idx; } ;
typedef TYPE_1__ pg_data_t ;


 int DEFINE_WAIT (int ) ;
 int HZ ;
 int KSWAPD_HIGH_WMARK_HIT_QUICKLY ;
 int KSWAPD_LOW_WMARK_HIT_QUICKLY ;
 int TASK_INTERRUPTIBLE ;
 int calculate_normal_threshold ;
 int calculate_pressure_threshold ;
 int count_vm_event (int ) ;
 int current ;
 int finish_wait (int *,int *) ;
 scalar_t__ freezing (int ) ;
 int kswapd_classzone_idx (TYPE_1__*,unsigned int) ;
 scalar_t__ kthread_should_stop () ;
 int max (int ,int) ;
 scalar_t__ prepare_kswapd_sleep (TYPE_1__*,int,unsigned int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int reset_isolation_suitable (TYPE_1__*) ;
 int schedule () ;
 long schedule_timeout (int) ;
 int set_pgdat_percpu_threshold (TYPE_1__*,int ) ;
 int trace_mm_vmscan_kswapd_sleep (int ) ;
 int wait ;
 int wakeup_kcompactd (TYPE_1__*,int,unsigned int) ;

__attribute__((used)) static void kswapd_try_to_sleep(pg_data_t *pgdat, int alloc_order, int reclaim_order,
    unsigned int classzone_idx)
{
 long remaining = 0;
 DEFINE_WAIT(wait);

 if (freezing(current) || kthread_should_stop())
  return;

 prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
 if (prepare_kswapd_sleep(pgdat, reclaim_order, classzone_idx)) {






  reset_isolation_suitable(pgdat);





  wakeup_kcompactd(pgdat, alloc_order, classzone_idx);

  remaining = schedule_timeout(HZ/10);






  if (remaining) {
   pgdat->kswapd_classzone_idx = kswapd_classzone_idx(pgdat, classzone_idx);
   pgdat->kswapd_order = max(pgdat->kswapd_order, reclaim_order);
  }

  finish_wait(&pgdat->kswapd_wait, &wait);
  prepare_to_wait(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
 }





 if (!remaining &&
     prepare_kswapd_sleep(pgdat, reclaim_order, classzone_idx)) {
  trace_mm_vmscan_kswapd_sleep(pgdat->node_id);
  set_pgdat_percpu_threshold(pgdat, calculate_normal_threshold);

  if (!kthread_should_stop())
   schedule();

  set_pgdat_percpu_threshold(pgdat, calculate_pressure_threshold);
 } else {
  if (remaining)
   count_vm_event(KSWAPD_LOW_WMARK_HIT_QUICKLY);
  else
   count_vm_event(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
 }
 finish_wait(&pgdat->kswapd_wait, &wait);
}
