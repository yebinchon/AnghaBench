
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_lluint (int *,unsigned long long) ;
 int jsonw_name (int *,char const*) ;

void jsonw_lluint_field(json_writer_t *self,
   const char *prop,
   unsigned long long int num)
{
 jsonw_name(self, prop);
 jsonw_lluint(self, num);
}
