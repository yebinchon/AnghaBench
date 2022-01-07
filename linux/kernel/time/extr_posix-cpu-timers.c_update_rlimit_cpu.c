
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int siglock; } ;


 int CPUCLOCK_PROF ;
 unsigned long NSEC_PER_SEC ;
 int set_process_cpu_timer (struct task_struct*,int ,unsigned long*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void update_rlimit_cpu(struct task_struct *task, unsigned long rlim_new)
{
 u64 nsecs = rlim_new * NSEC_PER_SEC;

 spin_lock_irq(&task->sighand->siglock);
 set_process_cpu_timer(task, CPUCLOCK_PROF, &nsecs, ((void*)0));
 spin_unlock_irq(&task->sighand->siglock);
}
