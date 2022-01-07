
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_trace ;
 int tracer_tracing_off (int *) ;

void tracing_off(void)
{
 tracer_tracing_off(&global_trace);
}
