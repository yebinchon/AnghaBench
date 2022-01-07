
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rcuwait {int task; } ;


 struct task_struct* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_mb () ;
 int wake_up_process (struct task_struct*) ;

void rcuwait_wake_up(struct rcuwait *w)
{
 struct task_struct *task;

 rcu_read_lock();
 smp_mb();

 task = rcu_dereference(w->task);
 if (task)
  wake_up_process(task);
 rcu_read_unlock();
}
