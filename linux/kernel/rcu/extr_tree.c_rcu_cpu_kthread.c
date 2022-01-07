
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu_cpu_has_work; int rcu_cpu_kthread_status; } ;


 unsigned int RCU_KTHREAD_RUNNING ;
 unsigned int RCU_KTHREAD_WAITING ;
 unsigned int RCU_KTHREAD_YIELDING ;
 int TPS (char*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rcu_core () ;
 TYPE_1__ rcu_data ;
 int schedule_timeout_interruptible (int) ;
 void* this_cpu_ptr (int *) ;
 int trace_rcu_utilization (int ) ;

__attribute__((used)) static void rcu_cpu_kthread(unsigned int cpu)
{
 unsigned int *statusp = this_cpu_ptr(&rcu_data.rcu_cpu_kthread_status);
 char work, *workp = this_cpu_ptr(&rcu_data.rcu_cpu_has_work);
 int spincnt;

 for (spincnt = 0; spincnt < 10; spincnt++) {
  trace_rcu_utilization(TPS("Start CPU kthread@rcu_wait"));
  local_bh_disable();
  *statusp = RCU_KTHREAD_RUNNING;
  local_irq_disable();
  work = *workp;
  *workp = 0;
  local_irq_enable();
  if (work)
   rcu_core();
  local_bh_enable();
  if (*workp == 0) {
   trace_rcu_utilization(TPS("End CPU kthread@rcu_wait"));
   *statusp = RCU_KTHREAD_WAITING;
   return;
  }
 }
 *statusp = RCU_KTHREAD_YIELDING;
 trace_rcu_utilization(TPS("Start CPU kthread@rcu_yield"));
 schedule_timeout_interruptible(2);
 trace_rcu_utilization(TPS("End CPU kthread@rcu_yield"));
 *statusp = RCU_KTHREAD_WAITING;
}
