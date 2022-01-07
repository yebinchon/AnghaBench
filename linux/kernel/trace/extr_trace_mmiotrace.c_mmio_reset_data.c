
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int trace_buffer; } ;


 int overrun_detected ;
 scalar_t__ prev_overruns ;
 int tracing_reset_online_cpus (int *) ;

__attribute__((used)) static void mmio_reset_data(struct trace_array *tr)
{
 overrun_detected = 0;
 prev_overruns = 0;

 tracing_reset_online_cpus(&tr->trace_buffer);
}
