
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int ops; scalar_t__ function_enabled; } ;


 int unregister_ftrace_function (int ) ;

__attribute__((used)) static void tracing_stop_function_trace(struct trace_array *tr)
{
 tr->function_enabled = 0;
 unregister_ftrace_function(tr->ops);
}
