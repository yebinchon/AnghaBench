
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 struct fdt_property* fdt_get_property_w (void*,int,char const*,int*) ;
 int fdt_nop_region_ (struct fdt_property*,int) ;

int fdt_nop_property(void *fdt, int nodeoffset, const char *name)
{
 struct fdt_property *prop;
 int len;

 prop = fdt_get_property_w(fdt, nodeoffset, name, &len);
 if (!prop)
  return len;

 fdt_nop_region_(prop, len + sizeof(*prop));

 return 0;
}
