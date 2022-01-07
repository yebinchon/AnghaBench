
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;


 int __ftrace_event_enable_disable (struct trace_event_file*,int,int) ;

int trace_event_enable_disable(struct trace_event_file *file,
          int enable, int soft_disable)
{
 return __ftrace_event_enable_disable(file, enable, soft_disable);
}
