
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {void* data; } ;


 int FDT_ERR_NOTFOUND ;
 int FDT_RW_PROBE (void*) ;
 int fdt_add_property_ (void*,int,char const*,int,struct fdt_property**) ;
 int fdt_resize_property_ (void*,int,char const*,int,struct fdt_property**) ;

int fdt_setprop_placeholder(void *fdt, int nodeoffset, const char *name,
       int len, void **prop_data)
{
 struct fdt_property *prop;
 int err;

 FDT_RW_PROBE(fdt);

 err = fdt_resize_property_(fdt, nodeoffset, name, len, &prop);
 if (err == -FDT_ERR_NOTFOUND)
  err = fdt_add_property_(fdt, nodeoffset, name, len, &prop);
 if (err)
  return err;

 *prop_data = prop->data;
 return 0;
}
