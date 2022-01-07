
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_name (int *,char const*) ;
 int jsonw_null (int *) ;

void jsonw_null_field(json_writer_t *self, const char *prop)
{
 jsonw_name(self, prop);
 jsonw_null(self);
}
