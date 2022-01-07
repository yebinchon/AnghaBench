
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_set_size_dt_strings (void*,scalar_t__) ;
 scalar_t__ fdt_size_dt_strings (void*) ;
 int strlen (char const*) ;

__attribute__((used)) static void fdt_del_last_string_(void *fdt, const char *s)
{
 int newlen = strlen(s) + 1;

 fdt_set_size_dt_strings(fdt, fdt_size_dt_strings(fdt) - newlen);
}
