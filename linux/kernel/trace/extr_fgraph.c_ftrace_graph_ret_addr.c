
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int curr_ret_stack; TYPE_1__* ret_stack; } ;
struct TYPE_2__ {unsigned long ret; } ;


 scalar_t__ dereference_kernel_function_descriptor (int ) ;
 int return_to_handler ;

unsigned long ftrace_graph_ret_addr(struct task_struct *task, int *idx,
        unsigned long ret, unsigned long *retp)
{
 int task_idx;

 if (ret != (unsigned long)dereference_kernel_function_descriptor(return_to_handler))
  return ret;

 task_idx = task->curr_ret_stack;

 if (!task->ret_stack || task_idx < *idx)
  return ret;

 task_idx -= *idx;
 (*idx)++;

 return task->ret_stack[task_idx].ret;
}
