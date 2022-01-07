
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int jobctl; } ;


 int JOBCTL_TRAPPING ;
 int JOBCTL_TRAPPING_BIT ;
 int smp_mb () ;
 scalar_t__ unlikely (int) ;
 int wake_up_bit (int*,int ) ;

void task_clear_jobctl_trapping(struct task_struct *task)
{
 if (unlikely(task->jobctl & JOBCTL_TRAPPING)) {
  task->jobctl &= ~JOBCTL_TRAPPING;
  smp_mb();
  wake_up_bit(&task->jobctl, JOBCTL_TRAPPING_BIT);
 }
}
