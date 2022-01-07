
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * security; } ;


 int call_void_hook (int ,struct task_struct*) ;
 int kfree (int *) ;
 int task_free ;

void security_task_free(struct task_struct *task)
{
 call_void_hook(task_free, task);

 kfree(task->security);
 task->security = ((void*)0);
}
