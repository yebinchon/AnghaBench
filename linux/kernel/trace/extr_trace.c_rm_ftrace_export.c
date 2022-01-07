
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int dummy; } ;


 int ftrace_exports_disable () ;
 int rm_trace_export (struct trace_export**,struct trace_export*) ;

__attribute__((used)) static inline int
rm_ftrace_export(struct trace_export **list, struct trace_export *export)
{
 int ret;

 ret = rm_trace_export(list, export);
 if (*list == ((void*)0))
  ftrace_exports_disable();

 return ret;
}
