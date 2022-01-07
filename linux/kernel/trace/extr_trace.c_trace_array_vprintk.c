
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {int buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;


 int __trace_array_vprintk (int ,unsigned long,char const*,int ) ;

int trace_array_vprintk(struct trace_array *tr,
   unsigned long ip, const char *fmt, va_list args)
{
 return __trace_array_vprintk(tr->trace_buffer.buffer, ip, fmt, args);
}
