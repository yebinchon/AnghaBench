
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* fdt_getprop (void const*,int,char*,int*) ;
 int fdt_stringlist_contains (void const*,int,char const*) ;

int fdt_node_check_compatible(const void *fdt, int nodeoffset,
         const char *compatible)
{
 const void *prop;
 int len;

 prop = fdt_getprop(fdt, nodeoffset, "compatible", &len);
 if (!prop)
  return len;

 return !fdt_stringlist_contains(prop, len, compatible);
}
