
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*,unsigned short) ;

void jsonw_hu(json_writer_t *self, unsigned short num)
{
 jsonw_printf(self, "%hu", num);
}
