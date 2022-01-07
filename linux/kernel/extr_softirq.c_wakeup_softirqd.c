
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* __this_cpu_read (int ) ;
 int ksoftirqd ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void wakeup_softirqd(void)
{

 struct task_struct *tsk = __this_cpu_read(ksoftirqd);

 if (tsk && tsk->state != TASK_RUNNING)
  wake_up_process(tsk);
}
