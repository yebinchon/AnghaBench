
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int register_wakeup_function (struct trace_array*,int,int ) ;
 int tracer_enabled ;
 scalar_t__ tracing_is_enabled () ;

__attribute__((used)) static int start_func_tracer(struct trace_array *tr, int graph)
{
 int ret;

 ret = register_wakeup_function(tr, graph, 0);

 if (!ret && tracing_is_enabled())
  tracer_enabled = 1;
 else
  tracer_enabled = 0;

 return ret;
}
