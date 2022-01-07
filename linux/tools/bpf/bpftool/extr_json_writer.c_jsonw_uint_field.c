
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int json_writer_t ;


 int jsonw_name (int *,char const*) ;
 int jsonw_uint (int *,int ) ;

void jsonw_uint_field(json_writer_t *self, const char *prop, uint64_t num)
{
 jsonw_name(self, prop);
 jsonw_uint(self, num);
}
