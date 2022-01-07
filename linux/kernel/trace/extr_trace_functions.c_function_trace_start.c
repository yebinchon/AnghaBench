
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int trace_buffer; } ;


 int tracing_reset_online_cpus (int *) ;

__attribute__((used)) static void function_trace_start(struct trace_array *tr)
{
 tracing_reset_online_cpus(&tr->trace_buffer);
}
