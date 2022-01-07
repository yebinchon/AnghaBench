
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; } ;


 unsigned long SOFTIRQ_NOW_MASK ;
 scalar_t__ TASK_RUNNING ;
 int __kthread_should_park (struct task_struct*) ;
 struct task_struct* __this_cpu_read (int ) ;
 int ksoftirqd ;

__attribute__((used)) static bool ksoftirqd_running(unsigned long pending)
{
 struct task_struct *tsk = __this_cpu_read(ksoftirqd);

 if (pending & SOFTIRQ_NOW_MASK)
  return 0;
 return tsk && (tsk->state == TASK_RUNNING) &&
  !__kthread_should_park(tsk);
}
