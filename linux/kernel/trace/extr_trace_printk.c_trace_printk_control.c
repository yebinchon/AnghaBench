
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_printk_enabled ;

void trace_printk_control(bool enabled)
{
 trace_printk_enabled = enabled;
}
