
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {int (* show ) (char const*,int ) ;} ;


 TYPE_1__* helpline_fns ;
 int stub1 (char const*,int ) ;

int ui_helpline__vshow(const char *fmt, va_list ap)
{
 return helpline_fns->show(fmt, ap);
}
