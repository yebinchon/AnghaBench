
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_float_fmt (int *,char const*,double) ;
 int jsonw_name (int *,char const*) ;

void jsonw_float_field_fmt(json_writer_t *self,
      const char *prop,
      const char *fmt,
      double val)
{
 jsonw_name(self, prop);
 jsonw_float_fmt(self, fmt, val);
}
