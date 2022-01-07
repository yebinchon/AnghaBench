
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_trace ;
 int tracer_tracing_is_on (int *) ;

int tracing_is_on(void)
{
 return tracer_tracing_is_on(&global_trace);
}
