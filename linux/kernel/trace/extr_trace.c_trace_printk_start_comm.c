
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffers_allocated ;
 int tracing_start_cmdline_record () ;

void trace_printk_start_comm(void)
{

 if (!buffers_allocated)
  return;
 tracing_start_cmdline_record();
}
