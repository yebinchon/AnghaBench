
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct ftrace_ret_stack* ret_stack; } ;
struct ftrace_ret_stack {int dummy; } ;


 int barrier () ;
 int kfree (struct ftrace_ret_stack*) ;

void ftrace_graph_exit_task(struct task_struct *t)
{
 struct ftrace_ret_stack *ret_stack = t->ret_stack;

 t->ret_stack = ((void*)0);

 barrier();

 kfree(ret_stack);
}
