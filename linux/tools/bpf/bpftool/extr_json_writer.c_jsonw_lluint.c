
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*,unsigned long long) ;

void jsonw_lluint(json_writer_t *self, unsigned long long int num)
{
 jsonw_printf(self, "%llu", num);
}
