
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int TRACE_ITER_LATENCY_FMT ;
 int TRACE_ITER_OVERWRITE ;
 int ftrace_reset_array_ops (struct trace_array*) ;
 int save_flags ;
 int set_tracer_flag (struct trace_array*,int,int) ;
 int stop_wakeup_tracer (struct trace_array*) ;
 int wakeup_busy ;
 int wakeup_reset (struct trace_array*) ;

__attribute__((used)) static void wakeup_tracer_reset(struct trace_array *tr)
{
 int lat_flag = save_flags & TRACE_ITER_LATENCY_FMT;
 int overwrite_flag = save_flags & TRACE_ITER_OVERWRITE;

 stop_wakeup_tracer(tr);

 wakeup_reset(tr);

 set_tracer_flag(tr, TRACE_ITER_LATENCY_FMT, lat_flag);
 set_tracer_flag(tr, TRACE_ITER_OVERWRITE, overwrite_flag);
 ftrace_reset_array_ops(tr);
 wakeup_busy = 0;
}
