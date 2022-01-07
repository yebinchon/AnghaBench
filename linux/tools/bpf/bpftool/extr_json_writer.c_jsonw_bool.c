
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*,char*) ;

void jsonw_bool(json_writer_t *self, bool val)
{
 jsonw_printf(self, "%s", val ? "true" : "false");
}
