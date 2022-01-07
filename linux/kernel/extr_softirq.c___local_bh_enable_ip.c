
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SOFTIRQ_DISABLE_OFFSET ;
 int WARN_ON_ONCE (int ) ;
 int do_softirq () ;
 int in_interrupt () ;
 int in_irq () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ local_softirq_pending () ;
 int lockdep_assert_irqs_enabled () ;
 int preempt_check_resched () ;
 int preempt_count_dec () ;
 int preempt_count_sub (unsigned int) ;
 scalar_t__ softirq_count () ;
 int trace_softirqs_on (unsigned long) ;
 scalar_t__ unlikely (int) ;

void __local_bh_enable_ip(unsigned long ip, unsigned int cnt)
{
 WARN_ON_ONCE(in_irq());
 lockdep_assert_irqs_enabled();






 if (softirq_count() == SOFTIRQ_DISABLE_OFFSET)
  trace_softirqs_on(ip);




 preempt_count_sub(cnt - 1);

 if (unlikely(!in_interrupt() && local_softirq_pending())) {




  do_softirq();
 }

 preempt_count_dec();



 preempt_check_resched();
}
