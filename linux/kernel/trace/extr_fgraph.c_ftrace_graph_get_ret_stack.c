
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int curr_ret_stack; struct ftrace_ret_stack* ret_stack; } ;
struct ftrace_ret_stack {int dummy; } ;



struct ftrace_ret_stack *
ftrace_graph_get_ret_stack(struct task_struct *task, int idx)
{
 idx = task->curr_ret_stack - idx;

 if (idx >= 0 && idx <= task->curr_ret_stack)
  return &task->ret_stack[idx];

 return ((void*)0);
}
