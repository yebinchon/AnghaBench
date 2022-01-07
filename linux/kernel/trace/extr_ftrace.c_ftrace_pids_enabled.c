
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int * function_pids; } ;
struct ftrace_ops {int flags; struct trace_array* private; } ;


 int FTRACE_OPS_FL_PID ;

__attribute__((used)) static bool ftrace_pids_enabled(struct ftrace_ops *ops)
{
 struct trace_array *tr;

 if (!(ops->flags & FTRACE_OPS_FL_PID) || !ops->private)
  return 0;

 tr = ops->private;

 return tr->function_pids != ((void*)0);
}
