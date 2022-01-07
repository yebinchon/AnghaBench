
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __disable_trace_on_warning ;
 int tracing_off () ;

void disable_trace_on_warning(void)
{
 if (__disable_trace_on_warning)
  tracing_off();
}
