
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char const*,double) ;

void jsonw_float_fmt(json_writer_t *self, const char *fmt, double num)
{
 jsonw_printf(self, fmt, num);
}
