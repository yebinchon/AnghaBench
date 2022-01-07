
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* fdt_get_string (void const*,int,int *) ;

const char *fdt_string(const void *fdt, int stroffset)
{
 return fdt_get_string(fdt, stroffset, ((void*)0));
}
