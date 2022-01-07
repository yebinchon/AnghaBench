
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int function_enabled; int ops; } ;


 int register_ftrace_function (int ) ;

__attribute__((used)) static void tracing_start_function_trace(struct trace_array *tr)
{
 tr->function_enabled = 0;
 register_ftrace_function(tr->ops);
 tr->function_enabled = 1;
}
