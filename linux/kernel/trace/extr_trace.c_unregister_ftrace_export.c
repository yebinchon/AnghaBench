
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int dummy; } ;


 int ftrace_export_lock ;
 int ftrace_exports_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rm_ftrace_export (int *,struct trace_export*) ;

int unregister_ftrace_export(struct trace_export *export)
{
 int ret;

 mutex_lock(&ftrace_export_lock);

 ret = rm_ftrace_export(&ftrace_exports_list, export);

 mutex_unlock(&ftrace_export_lock);

 return ret;
}
