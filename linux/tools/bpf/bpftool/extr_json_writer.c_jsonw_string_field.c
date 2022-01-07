
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_name (int *,char const*) ;
 int jsonw_string (int *,char const*) ;

void jsonw_string_field(json_writer_t *self, const char *prop, const char *val)
{
 jsonw_name(self, prop);
 jsonw_string(self, val);
}
