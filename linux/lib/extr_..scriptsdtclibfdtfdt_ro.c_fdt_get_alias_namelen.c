
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* fdt_getprop_namelen (void const*,int,char const*,int,int *) ;
 int fdt_path_offset (void const*,char*) ;

const char *fdt_get_alias_namelen(const void *fdt,
      const char *name, int namelen)
{
 int aliasoffset;

 aliasoffset = fdt_path_offset(fdt, "/aliases");
 if (aliasoffset < 0)
  return ((void*)0);

 return fdt_getprop_namelen(fdt, aliasoffset, name, namelen, ((void*)0));
}
