
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_eor (int *) ;
 int jsonw_puts (int *,char const*) ;

void jsonw_string(json_writer_t *self, const char *value)
{
 jsonw_eor(self);
 jsonw_puts(self, value);
}
