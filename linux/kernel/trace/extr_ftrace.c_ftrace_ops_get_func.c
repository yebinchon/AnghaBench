
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int flags; int func; } ;
typedef int ftrace_func_t ;


 int FTRACE_OPS_FL_RCU ;
 int FTRACE_OPS_FL_RECURSION_SAFE ;
 int ftrace_ops_assist_func ;

ftrace_func_t ftrace_ops_get_func(struct ftrace_ops *ops)
{




 if (!(ops->flags & FTRACE_OPS_FL_RECURSION_SAFE) ||
     ops->flags & FTRACE_OPS_FL_RCU)
  return ftrace_ops_assist_func;

 return ops->func;
}
