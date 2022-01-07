
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int funcgraph_ops ;
 int funcgraph_thresh_ops ;
 int tracing_stop_cmdline_record () ;
 scalar_t__ tracing_thresh ;
 int unregister_ftrace_graph (int *) ;

__attribute__((used)) static void graph_trace_reset(struct trace_array *tr)
{
 tracing_stop_cmdline_record();
 if (tracing_thresh)
  unregister_ftrace_graph(&funcgraph_thresh_ops);
 else
  unregister_ftrace_graph(&funcgraph_ops);
}
