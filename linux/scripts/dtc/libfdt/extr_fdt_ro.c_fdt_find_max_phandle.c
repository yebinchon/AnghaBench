
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int FDT_ERR_NOTFOUND ;
 scalar_t__ fdt_get_phandle (void const*,int) ;
 int fdt_next_node (void const*,int,int *) ;

int fdt_find_max_phandle(const void *fdt, uint32_t *phandle)
{
 uint32_t max = 0;
 int offset = -1;

 while (1) {
  uint32_t value;

  offset = fdt_next_node(fdt, offset, ((void*)0));
  if (offset < 0) {
   if (offset == -FDT_ERR_NOTFOUND)
    break;

   return offset;
  }

  value = fdt_get_phandle(fdt, offset);

  if (value > max)
   max = value;
 }

 if (phandle)
  *phandle = max;

 return 0;
}
