
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int kstat_irqs (unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

unsigned int kstat_irqs_usr(unsigned int irq)
{
 unsigned int sum;

 rcu_read_lock();
 sum = kstat_irqs(irq);
 rcu_read_unlock();
 return sum;
}
