
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int write; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int add_ftrace_export (int *,struct trace_export*) ;
 int ftrace_export_lock ;
 int ftrace_exports_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int register_ftrace_export(struct trace_export *export)
{
 if (WARN_ON_ONCE(!export->write))
  return -1;

 mutex_lock(&ftrace_export_lock);

 add_ftrace_export(&ftrace_exports_list, export);

 mutex_unlock(&ftrace_export_lock);

 return 0;
}
