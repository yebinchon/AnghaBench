
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int flags; int ops; } ;
struct dentry {int dummy; } ;


 int TRACE_ARRAY_FL_GLOBAL ;
 int allocate_ftrace_ops (struct trace_array*) ;
 int ftrace_create_filter_files (int ,struct dentry*) ;

int ftrace_create_function_files(struct trace_array *tr,
     struct dentry *parent)
{
 int ret;





 if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
  return 0;

 ret = allocate_ftrace_ops(tr);
 if (ret)
  return ret;

 ftrace_create_filter_files(tr->ops, parent);

 return 0;
}
