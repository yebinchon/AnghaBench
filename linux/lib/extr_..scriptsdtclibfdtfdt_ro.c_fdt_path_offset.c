
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_path_offset_namelen (void const*,char const*,int ) ;
 int strlen (char const*) ;

int fdt_path_offset(const void *fdt, const char *path)
{
 return fdt_path_offset_namelen(fdt, path, strlen(path));
}
