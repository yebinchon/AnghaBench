
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int flags; int saved_func; int func; } ;


 int EBUSY ;
 int FTRACE_OPS_FL_ENABLED ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ftrace_enabled ;
 int ftrace_ops_list ;
 int remove_ftrace_ops (int *,struct ftrace_ops*) ;
 int update_ftrace_function () ;

int __unregister_ftrace_function(struct ftrace_ops *ops)
{
 int ret;

 if (WARN_ON(!(ops->flags & FTRACE_OPS_FL_ENABLED)))
  return -EBUSY;

 ret = remove_ftrace_ops(&ftrace_ops_list, ops);

 if (ret < 0)
  return ret;

 if (ftrace_enabled)
  update_ftrace_function();

 ops->func = ops->saved_func;

 return 0;
}
