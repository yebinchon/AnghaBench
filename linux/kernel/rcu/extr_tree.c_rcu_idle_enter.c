
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lockdep_assert_irqs_disabled () ;
 int rcu_eqs_enter (int) ;

void rcu_idle_enter(void)
{
 lockdep_assert_irqs_disabled();
 rcu_eqs_enter(0);
}
