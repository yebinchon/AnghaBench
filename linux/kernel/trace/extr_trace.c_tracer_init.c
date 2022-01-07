
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {int (* init ) (struct trace_array*) ;} ;
struct trace_array {int trace_buffer; } ;


 int stub1 (struct trace_array*) ;
 int tracing_reset_online_cpus (int *) ;

int tracer_init(struct tracer *t, struct trace_array *tr)
{
 tracing_reset_online_cpus(&tr->trace_buffer);
 return t->init(tr);
}
