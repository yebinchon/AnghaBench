
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALLER_ADDR0 ;
 unsigned int SOFTIRQ_MASK ;
 int _RET_IP_ ;
 int __preempt_count_sub (unsigned int) ;
 int get_lock_parent_ip () ;
 int lockdep_assert_irqs_disabled () ;
 unsigned int preempt_count () ;
 unsigned int softirq_count () ;
 int trace_preempt_on (int ,int ) ;
 int trace_softirqs_on (int ) ;

__attribute__((used)) static void __local_bh_enable(unsigned int cnt)
{
 lockdep_assert_irqs_disabled();

 if (preempt_count() == cnt)
  trace_preempt_on(CALLER_ADDR0, get_lock_parent_ip());

 if (softirq_count() == (cnt & SOFTIRQ_MASK))
  trace_softirqs_on(_RET_IP_);

 __preempt_count_sub(cnt);
}
