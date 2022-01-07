
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffers_allocated ;
 int tracing_start_cmdline_record () ;
 int tracing_stop_cmdline_record () ;

__attribute__((used)) static void trace_printk_start_stop_comm(int enabled)
{
 if (!buffers_allocated)
  return;

 if (enabled)
  tracing_start_cmdline_record();
 else
  tracing_stop_cmdline_record();
}
