
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int flags; } ;
typedef int ftrace_func_t ;


 scalar_t__ FTRACE_FORCE_LIST_FUNC ;
 int FTRACE_OPS_FL_DYNAMIC ;
 int FTRACE_OPS_FL_RCU ;
 int ftrace_ops_get_func (struct ftrace_ops*) ;
 int ftrace_ops_list_func ;

__attribute__((used)) static ftrace_func_t ftrace_ops_get_list_func(struct ftrace_ops *ops)
{




 if (ops->flags & (FTRACE_OPS_FL_DYNAMIC | FTRACE_OPS_FL_RCU) ||
     FTRACE_FORCE_LIST_FUNC)
  return ftrace_ops_list_func;

 return ftrace_ops_get_func(ops);
}
