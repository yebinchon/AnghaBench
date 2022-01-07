
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_graph_ret {scalar_t__ rettime; scalar_t__ calltime; } ;


 int TRACE_GRAPH_NOTRACE_BIT ;
 int ftrace_graph_addr_finish (struct ftrace_graph_ret*) ;
 int trace_graph_return (struct ftrace_graph_ret*) ;
 int trace_recursion_clear (int ) ;
 scalar_t__ trace_recursion_test (int ) ;
 scalar_t__ tracing_thresh ;

__attribute__((used)) static void trace_graph_thresh_return(struct ftrace_graph_ret *trace)
{
 ftrace_graph_addr_finish(trace);

 if (trace_recursion_test(TRACE_GRAPH_NOTRACE_BIT)) {
  trace_recursion_clear(TRACE_GRAPH_NOTRACE_BIT);
  return;
 }

 if (tracing_thresh &&
     (trace->rettime - trace->calltime < tracing_thresh))
  return;
 else
  trace_graph_return(trace);
}
