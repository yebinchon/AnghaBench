
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int kthread_should_stop () ;
 unsigned long ktime_get_seconds () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pr_alert (char*,...) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule_timeout_interruptible (int) ;
 int smp_processor_id () ;
 unsigned long stall_cpu ;
 int stall_cpu_holdoff ;
 scalar_t__ stall_cpu_irqsoff ;
 int torture_shutdown_absorb (char*) ;

__attribute__((used)) static int rcu_torture_stall(void *args)
{
 unsigned long stop_at;

 VERBOSE_TOROUT_STRING("rcu_torture_stall task started");
 if (stall_cpu_holdoff > 0) {
  VERBOSE_TOROUT_STRING("rcu_torture_stall begin holdoff");
  schedule_timeout_interruptible(stall_cpu_holdoff * HZ);
  VERBOSE_TOROUT_STRING("rcu_torture_stall end holdoff");
 }
 if (!kthread_should_stop()) {
  stop_at = ktime_get_seconds() + stall_cpu;

  rcu_read_lock();
  if (stall_cpu_irqsoff)
   local_irq_disable();
  else
   preempt_disable();
  pr_alert("rcu_torture_stall start on CPU %d.\n",
    smp_processor_id());
  while (ULONG_CMP_LT((unsigned long)ktime_get_seconds(),
        stop_at))
   continue;
  if (stall_cpu_irqsoff)
   local_irq_enable();
  else
   preempt_enable();
  rcu_read_unlock();
  pr_alert("rcu_torture_stall end.\n");
 }
 torture_shutdown_absorb("rcu_torture_stall");
 while (!kthread_should_stop())
  schedule_timeout_interruptible(10 * HZ);
 return 0;
}
