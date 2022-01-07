
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int pid_allocated; } ;


 int PIDNS_ADDING ;
 int pidmap_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void disable_pid_allocation(struct pid_namespace *ns)
{
 spin_lock_irq(&pidmap_lock);
 ns->pid_allocated &= ~PIDNS_ADDING;
 spin_unlock_irq(&pidmap_lock);
}
