
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_trace ;
 int tracer_tracing_on (int *) ;

void tracing_on(void)
{
 tracer_tracing_on(&global_trace);
}
