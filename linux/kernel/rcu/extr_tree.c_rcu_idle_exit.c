
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rcu_eqs_exit (int) ;

void rcu_idle_exit(void)
{
 unsigned long flags;

 local_irq_save(flags);
 rcu_eqs_exit(0);
 local_irq_restore(flags);
}
