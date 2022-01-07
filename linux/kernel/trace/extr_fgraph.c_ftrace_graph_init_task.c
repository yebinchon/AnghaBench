
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int curr_ret_stack; int curr_ret_depth; int * ret_stack; } ;
struct ftrace_ret_stack {int dummy; } ;


 int FTRACE_RETFUNC_DEPTH ;
 int GFP_KERNEL ;
 scalar_t__ ftrace_graph_active ;
 int graph_init_task (struct task_struct*,struct ftrace_ret_stack*) ;
 struct ftrace_ret_stack* kmalloc_array (int ,int,int ) ;

void ftrace_graph_init_task(struct task_struct *t)
{

 t->ret_stack = ((void*)0);
 t->curr_ret_stack = -1;
 t->curr_ret_depth = -1;

 if (ftrace_graph_active) {
  struct ftrace_ret_stack *ret_stack;

  ret_stack = kmalloc_array(FTRACE_RETFUNC_DEPTH,
       sizeof(struct ftrace_ret_stack),
       GFP_KERNEL);
  if (!ret_stack)
   return;
  graph_init_task(t, ret_stack);
 }
}
