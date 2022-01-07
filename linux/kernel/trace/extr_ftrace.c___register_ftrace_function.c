
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int flags; int func; int saved_func; } ;


 int EBUSY ;
 int EINVAL ;
 int FTRACE_OPS_FL_DELETED ;
 int FTRACE_OPS_FL_DYNAMIC ;
 int FTRACE_OPS_FL_ENABLED ;
 int FTRACE_OPS_FL_SAVE_REGS ;
 int FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED ;
 scalar_t__ WARN_ON (int) ;
 int add_ftrace_ops (int *,struct ftrace_ops*) ;
 int core_kernel_data (unsigned long) ;
 scalar_t__ ftrace_enabled ;
 int ftrace_ops_list ;
 int ftrace_pid_func ;
 scalar_t__ ftrace_pids_enabled (struct ftrace_ops*) ;
 int ftrace_update_trampoline (struct ftrace_ops*) ;
 int update_ftrace_function () ;

int __register_ftrace_function(struct ftrace_ops *ops)
{
 if (ops->flags & FTRACE_OPS_FL_DELETED)
  return -EINVAL;

 if (WARN_ON(ops->flags & FTRACE_OPS_FL_ENABLED))
  return -EBUSY;







 if (ops->flags & FTRACE_OPS_FL_SAVE_REGS &&
     !(ops->flags & FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED))
  return -EINVAL;

 if (ops->flags & FTRACE_OPS_FL_SAVE_REGS_IF_SUPPORTED)
  ops->flags |= FTRACE_OPS_FL_SAVE_REGS;


 if (!core_kernel_data((unsigned long)ops))
  ops->flags |= FTRACE_OPS_FL_DYNAMIC;

 add_ftrace_ops(&ftrace_ops_list, ops);


 ops->saved_func = ops->func;

 if (ftrace_pids_enabled(ops))
  ops->func = ftrace_pid_func;

 ftrace_update_trampoline(ops);

 if (ftrace_enabled)
  update_ftrace_function();

 return 0;
}
