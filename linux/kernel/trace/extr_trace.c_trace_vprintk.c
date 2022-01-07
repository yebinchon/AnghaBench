
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int global_trace ;
 int trace_array_vprintk (int *,unsigned long,char const*,int ) ;

int trace_vprintk(unsigned long ip, const char *fmt, va_list args)
{
 return trace_array_vprintk(&global_trace, ip, fmt, args);
}
