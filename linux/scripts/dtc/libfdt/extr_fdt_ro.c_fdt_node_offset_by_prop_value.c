
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_RO_PROBE (void const*) ;
 void* fdt_getprop (void const*,int,char const*,int*) ;
 int fdt_next_node (void const*,int,int *) ;
 scalar_t__ memcmp (void const*,void const*,int) ;

int fdt_node_offset_by_prop_value(const void *fdt, int startoffset,
      const char *propname,
      const void *propval, int proplen)
{
 int offset;
 const void *val;
 int len;

 FDT_RO_PROBE(fdt);






 for (offset = fdt_next_node(fdt, startoffset, ((void*)0));
      offset >= 0;
      offset = fdt_next_node(fdt, offset, ((void*)0))) {
  val = fdt_getprop(fdt, offset, propname, &len);
  if (val && (len == proplen)
      && (memcmp(val, propval, len) == 0))
   return offset;
 }

 return offset;
}
