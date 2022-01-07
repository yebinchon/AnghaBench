
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int flags; int cpu_pwqs; } ;
struct pool_workqueue {int delayed_works; } ;


 int WORK_CPU_UNBOUND ;
 int WQ_UNBOUND ;
 int cpu_to_node (int) ;
 int list_empty (int *) ;
 struct pool_workqueue* per_cpu_ptr (int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_processor_id () ;
 struct pool_workqueue* unbound_pwq_by_node (struct workqueue_struct*,int ) ;

bool workqueue_congested(int cpu, struct workqueue_struct *wq)
{
 struct pool_workqueue *pwq;
 bool ret;

 rcu_read_lock();
 preempt_disable();

 if (cpu == WORK_CPU_UNBOUND)
  cpu = smp_processor_id();

 if (!(wq->flags & WQ_UNBOUND))
  pwq = per_cpu_ptr(wq->cpu_pwqs, cpu);
 else
  pwq = unbound_pwq_by_node(wq, cpu_to_node(cpu));

 ret = !list_empty(&pwq->delayed_works);
 preempt_enable();
 rcu_read_unlock();

 return ret;
}
