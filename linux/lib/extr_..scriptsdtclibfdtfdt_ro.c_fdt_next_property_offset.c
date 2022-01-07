
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_check_prop_offset_ (void const*,int) ;
 int nextprop_ (void const*,int) ;

int fdt_next_property_offset(const void *fdt, int offset)
{
 if ((offset = fdt_check_prop_offset_(fdt, offset)) < 0)
  return offset;

 return nextprop_(fdt, offset);
}
