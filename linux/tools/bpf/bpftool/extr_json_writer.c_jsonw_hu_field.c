
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_hu (int *,unsigned short) ;
 int jsonw_name (int *,char const*) ;

void jsonw_hu_field(json_writer_t *self, const char *prop, unsigned short num)
{
 jsonw_name(self, prop);
 jsonw_hu(self, num);
}
