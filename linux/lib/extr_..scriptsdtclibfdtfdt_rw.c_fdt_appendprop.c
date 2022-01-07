
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {scalar_t__ data; int len; } ;


 int FDT_RW_PROBE (void*) ;
 int FDT_TAGALIGN (int) ;
 int cpu_to_fdt32 (int) ;
 int fdt_add_property_ (void*,int,char const*,int,struct fdt_property**) ;
 struct fdt_property* fdt_get_property_w (void*,int,char const*,int*) ;
 int fdt_splice_struct_ (void*,scalar_t__,int ,int ) ;
 int memcpy (scalar_t__,void const*,int) ;

int fdt_appendprop(void *fdt, int nodeoffset, const char *name,
     const void *val, int len)
{
 struct fdt_property *prop;
 int err, oldlen, newlen;

 FDT_RW_PROBE(fdt);

 prop = fdt_get_property_w(fdt, nodeoffset, name, &oldlen);
 if (prop) {
  newlen = len + oldlen;
  err = fdt_splice_struct_(fdt, prop->data,
      FDT_TAGALIGN(oldlen),
      FDT_TAGALIGN(newlen));
  if (err)
   return err;
  prop->len = cpu_to_fdt32(newlen);
  memcpy(prop->data + oldlen, val, len);
 } else {
  err = fdt_add_property_(fdt, nodeoffset, name, len, &prop);
  if (err)
   return err;
  memcpy(prop->data, val, len);
 }
 return 0;
}
