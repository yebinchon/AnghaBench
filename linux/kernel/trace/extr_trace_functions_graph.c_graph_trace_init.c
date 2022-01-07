
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int funcgraph_ops ;
 int funcgraph_thresh_ops ;
 int register_ftrace_graph (int *) ;
 int set_graph_array (struct trace_array*) ;
 int tracing_start_cmdline_record () ;
 scalar_t__ tracing_thresh ;

__attribute__((used)) static int graph_trace_init(struct trace_array *tr)
{
 int ret;

 set_graph_array(tr);
 if (tracing_thresh)
  ret = register_ftrace_graph(&funcgraph_thresh_ops);
 else
  ret = register_ftrace_graph(&funcgraph_ops);
 if (ret)
  return ret;
 tracing_start_cmdline_record();

 return 0;
}
