
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int blocking_notifier_call_chain (int *,int ,struct task_struct*) ;
 int task_exit_notifier ;

void profile_task_exit(struct task_struct *task)
{
 blocking_notifier_call_chain(&task_exit_notifier, 0, task);
}
