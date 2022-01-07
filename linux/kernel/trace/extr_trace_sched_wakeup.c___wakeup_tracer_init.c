
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {scalar_t__ max_latency; int trace_flags; } ;


 int TRACE_ITER_LATENCY_FMT ;
 int TRACE_ITER_OVERWRITE ;
 int ftrace_init_array_ops (struct trace_array*,int ) ;
 int save_flags ;
 int set_tracer_flag (struct trace_array*,int ,int) ;
 int start_wakeup_tracer (struct trace_array*) ;
 int wakeup_busy ;
 struct trace_array* wakeup_trace ;
 int wakeup_tracer_call ;

__attribute__((used)) static int __wakeup_tracer_init(struct trace_array *tr)
{
 save_flags = tr->trace_flags;


 set_tracer_flag(tr, TRACE_ITER_OVERWRITE, 1);
 set_tracer_flag(tr, TRACE_ITER_LATENCY_FMT, 1);

 tr->max_latency = 0;
 wakeup_trace = tr;
 ftrace_init_array_ops(tr, wakeup_tracer_call);
 start_wakeup_tracer(tr);

 wakeup_busy = 1;
 return 0;
}
