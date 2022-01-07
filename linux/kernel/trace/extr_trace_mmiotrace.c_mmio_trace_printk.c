
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int trace_vprintk (int ,char const*,int ) ;

int mmio_trace_printk(const char *fmt, va_list args)
{
 return trace_vprintk(0, fmt, args);
}
