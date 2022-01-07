
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;
typedef int int64_t ;


 int jsonw_int (int *,int ) ;
 int jsonw_name (int *,char const*) ;

void jsonw_int_field(json_writer_t *self, const char *prop, int64_t num)
{
 jsonw_name(self, prop);
 jsonw_int(self, num);
}
