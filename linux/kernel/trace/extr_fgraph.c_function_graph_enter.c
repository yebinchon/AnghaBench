
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftrace_graph_ent {unsigned long func; scalar_t__ depth; } ;
struct TYPE_2__ {scalar_t__ curr_ret_depth; int curr_ret_stack; } ;


 int EBUSY ;
 TYPE_1__* current ;
 int ftrace_graph_entry (struct ftrace_graph_ent*) ;
 scalar_t__ ftrace_push_return_trace (unsigned long,unsigned long,unsigned long,unsigned long*) ;

int function_graph_enter(unsigned long ret, unsigned long func,
    unsigned long frame_pointer, unsigned long *retp)
{
 struct ftrace_graph_ent trace;

 trace.func = func;
 trace.depth = ++current->curr_ret_depth;

 if (ftrace_push_return_trace(ret, func, frame_pointer, retp))
  goto out;


 if (!ftrace_graph_entry(&trace))
  goto out_ret;

 return 0;
 out_ret:
 current->curr_ret_stack--;
 out:
 current->curr_ret_depth--;
 return -EBUSY;
}
