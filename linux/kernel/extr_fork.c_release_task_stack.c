
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; int * stack_vm_area; int * stack; } ;


 scalar_t__ TASK_DEAD ;
 scalar_t__ WARN_ON (int) ;
 int account_kernel_stack (struct task_struct*,int) ;
 int free_thread_stack (struct task_struct*) ;

__attribute__((used)) static void release_task_stack(struct task_struct *tsk)
{
 if (WARN_ON(tsk->state != TASK_DEAD))
  return;

 account_kernel_stack(tsk, -1);
 free_thread_stack(tsk);
 tsk->stack = ((void*)0);



}
