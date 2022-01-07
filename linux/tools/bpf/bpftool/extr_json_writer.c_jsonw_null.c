
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*) ;

void jsonw_null(json_writer_t *self)
{
 jsonw_printf(self, "null");
}
