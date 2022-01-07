
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftrace_graph_ret {int rettime; } ;
struct TYPE_2__ {int curr_ret_stack; } ;


 int WARN_ON (int) ;
 int barrier () ;
 TYPE_1__* current ;
 int ftrace_graph_return (struct ftrace_graph_ret*) ;
 int ftrace_graph_stop () ;
 int ftrace_pop_return_trace (struct ftrace_graph_ret*,unsigned long*,unsigned long) ;
 scalar_t__ panic ;
 int trace_clock_local () ;
 scalar_t__ unlikely (int) ;

unsigned long ftrace_return_to_handler(unsigned long frame_pointer)
{
 struct ftrace_graph_ret trace;
 unsigned long ret;

 ftrace_pop_return_trace(&trace, &ret, frame_pointer);
 trace.rettime = trace_clock_local();
 ftrace_graph_return(&trace);





 barrier();
 current->curr_ret_stack--;

 if (unlikely(!ret)) {
  ftrace_graph_stop();
  WARN_ON(1);

  ret = (unsigned long)panic;
 }

 return ret;
}
