
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {int dummy; } ;


 int add_trace_export (struct trace_export**,struct trace_export*) ;
 int ftrace_exports_enable () ;

__attribute__((used)) static inline void
add_ftrace_export(struct trace_export **list, struct trace_export *export)
{
 if (*list == ((void*)0))
  ftrace_exports_enable();

 add_trace_export(list, export);
}
