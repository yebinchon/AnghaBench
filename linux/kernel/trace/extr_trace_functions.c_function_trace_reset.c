
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int ftrace_reset_array_ops (struct trace_array*) ;
 int tracing_stop_cmdline_record () ;
 int tracing_stop_function_trace (struct trace_array*) ;

__attribute__((used)) static void function_trace_reset(struct trace_array *tr)
{
 tracing_stop_function_trace(tr);
 tracing_stop_cmdline_record();
 ftrace_reset_array_ops(tr);
}
