
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int hwlat_busy ;
 int last_tracing_thresh ;
 int save_tracing_thresh ;
 int stop_kthread () ;
 int tracing_thresh ;

__attribute__((used)) static void hwlat_tracer_reset(struct trace_array *tr)
{
 stop_kthread();


 last_tracing_thresh = tracing_thresh;

 tracing_thresh = save_tracing_thresh;
 hwlat_busy = 0;
}
