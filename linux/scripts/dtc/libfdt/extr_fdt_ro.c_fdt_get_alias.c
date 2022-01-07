
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* fdt_get_alias_namelen (void const*,char const*,int ) ;
 int strlen (char const*) ;

const char *fdt_get_alias(const void *fdt, const char *name)
{
 return fdt_get_alias_namelen(fdt, name, strlen(name));
}
