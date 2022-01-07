
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int ENODEV ;
 int __ftrace_set_clr_event (struct trace_array*,int *,char const*,char const*,int) ;
 struct trace_array* top_trace_array () ;

int trace_set_clr_event(const char *system, const char *event, int set)
{
 struct trace_array *tr = top_trace_array();

 if (!tr)
  return -ENODEV;

 return __ftrace_set_clr_event(tr, ((void*)0), system, event, set);
}
