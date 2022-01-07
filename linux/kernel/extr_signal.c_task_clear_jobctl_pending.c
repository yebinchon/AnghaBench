
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long jobctl; } ;


 int BUG_ON (unsigned long) ;
 unsigned long JOBCTL_PENDING_MASK ;
 unsigned long JOBCTL_STOP_CONSUME ;
 unsigned long JOBCTL_STOP_DEQUEUED ;
 unsigned long JOBCTL_STOP_PENDING ;
 int task_clear_jobctl_trapping (struct task_struct*) ;

void task_clear_jobctl_pending(struct task_struct *task, unsigned long mask)
{
 BUG_ON(mask & ~JOBCTL_PENDING_MASK);

 if (mask & JOBCTL_STOP_PENDING)
  mask |= JOBCTL_STOP_CONSUME | JOBCTL_STOP_DEQUEUED;

 task->jobctl &= ~mask;

 if (!(task->jobctl & JOBCTL_PENDING_MASK))
  task_clear_jobctl_trapping(task);
}
