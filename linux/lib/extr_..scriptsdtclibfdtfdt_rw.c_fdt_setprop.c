
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_setprop_placeholder (void*,int,char const*,int,void**) ;
 int memcpy (void*,void const*,int) ;

int fdt_setprop(void *fdt, int nodeoffset, const char *name,
  const void *val, int len)
{
 void *prop_data;
 int err;

 err = fdt_setprop_placeholder(fdt, nodeoffset, name, len, &prop_data);
 if (err)
  return err;

 if (len)
  memcpy(prop_data, val, len);
 return 0;
}
