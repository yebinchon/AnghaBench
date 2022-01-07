
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vfprintf (void*,char const*,int ) ;

void btf_dump_printf(void *ctx, const char *fmt, va_list args)
{
 vfprintf(ctx, fmt, args);
}
