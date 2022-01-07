
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct ftrace_ops* ops; } ;
struct ftrace_ops {int flags; struct trace_array* private; int func; } ;


 int ENOMEM ;
 int FTRACE_OPS_FL_PID ;
 int FTRACE_OPS_FL_RECURSION_SAFE ;
 int GFP_KERNEL ;
 int function_trace_call ;
 struct ftrace_ops* kzalloc (int,int ) ;

__attribute__((used)) static int allocate_ftrace_ops(struct trace_array *tr)
{
 struct ftrace_ops *ops;

 ops = kzalloc(sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;


 ops->func = function_trace_call;
 ops->flags = FTRACE_OPS_FL_RECURSION_SAFE | FTRACE_OPS_FL_PID;

 tr->ops = ops;
 ops->private = tr;
 return 0;
}
