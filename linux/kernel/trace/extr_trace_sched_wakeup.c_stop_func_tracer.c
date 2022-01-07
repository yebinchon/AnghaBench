
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 scalar_t__ tracer_enabled ;
 int unregister_wakeup_function (struct trace_array*,int) ;

__attribute__((used)) static void stop_func_tracer(struct trace_array *tr, int graph)
{
 tracer_enabled = 0;

 unregister_wakeup_function(tr, graph);
}
