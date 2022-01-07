
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tracer {int dummy; } ;
struct trace_array {struct tracer* current_trace; } ;


 int TRACE_ITER_DISPLAY_GRAPH ;
 int trace_keep_overwrite (struct tracer*,int,int) ;
 int wakeup_display_graph (struct trace_array*,int) ;
 scalar_t__ wakeup_function_set (struct trace_array*,int,int) ;

__attribute__((used)) static int wakeup_flag_changed(struct trace_array *tr, u32 mask, int set)
{
 struct tracer *tracer = tr->current_trace;

 if (wakeup_function_set(tr, mask, set))
  return 0;






 return trace_keep_overwrite(tracer, mask, set);
}
