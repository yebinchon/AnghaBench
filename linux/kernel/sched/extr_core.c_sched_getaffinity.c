
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; int cpus_mask; } ;
struct cpumask {int dummy; } ;
typedef int pid_t ;


 int ESRCH ;
 int cpu_active_mask ;
 int cpumask_and (struct cpumask*,int *,int ) ;
 struct task_struct* find_process_by_pid (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_task_getscheduler (struct task_struct*) ;

long sched_getaffinity(pid_t pid, struct cpumask *mask)
{
 struct task_struct *p;
 unsigned long flags;
 int retval;

 rcu_read_lock();

 retval = -ESRCH;
 p = find_process_by_pid(pid);
 if (!p)
  goto out_unlock;

 retval = security_task_getscheduler(p);
 if (retval)
  goto out_unlock;

 raw_spin_lock_irqsave(&p->pi_lock, flags);
 cpumask_and(mask, &p->cpus_mask, cpu_active_mask);
 raw_spin_unlock_irqrestore(&p->pi_lock, flags);

out_unlock:
 rcu_read_unlock();

 return retval;
}
