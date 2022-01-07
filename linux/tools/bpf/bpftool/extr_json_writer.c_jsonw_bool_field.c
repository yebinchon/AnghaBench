
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_bool (int *,int) ;
 int jsonw_name (int *,char const*) ;

void jsonw_bool_field(json_writer_t *self, const char *prop, bool val)
{
 jsonw_name(self, prop);
 jsonw_bool(self, val);
}
