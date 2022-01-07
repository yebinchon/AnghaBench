
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_add_subnode_namelen (void*,int,char const*,int ) ;
 int strlen (char const*) ;

int fdt_add_subnode(void *fdt, int parentoffset, const char *name)
{
 return fdt_add_subnode_namelen(fdt, parentoffset, name, strlen(name));
}
