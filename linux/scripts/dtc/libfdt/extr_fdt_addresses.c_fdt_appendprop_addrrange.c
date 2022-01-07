
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int fdt64_t ;
typedef int fdt32_t ;


 int FDT_ERR_BADNCELLS ;
 int FDT_ERR_BADVALUE ;
 scalar_t__ UINT32_MAX ;
 int fdt32_st (int *,int ) ;
 int fdt64_st (int *,scalar_t__) ;
 int fdt_address_cells (void*,int) ;
 int fdt_appendprop (void*,int,char const*,int *,int) ;
 int fdt_size_cells (void*,int) ;

int fdt_appendprop_addrrange(void *fdt, int parent, int nodeoffset,
        const char *name, uint64_t addr, uint64_t size)
{
 int addr_cells, size_cells, ret;
 uint8_t data[sizeof(fdt64_t) * 2], *prop;

 ret = fdt_address_cells(fdt, parent);
 if (ret < 0)
  return ret;
 addr_cells = ret;

 ret = fdt_size_cells(fdt, parent);
 if (ret < 0)
  return ret;
 size_cells = ret;


 prop = data;
 if (addr_cells == 1) {
  if ((addr > UINT32_MAX) || ((UINT32_MAX + 1 - addr) < size))
   return -FDT_ERR_BADVALUE;

  fdt32_st(prop, (uint32_t)addr);
 } else if (addr_cells == 2) {
  fdt64_st(prop, addr);
 } else {
  return -FDT_ERR_BADNCELLS;
 }


 prop += addr_cells * sizeof(fdt32_t);
 if (size_cells == 1) {
  if (size > UINT32_MAX)
   return -FDT_ERR_BADVALUE;

  fdt32_st(prop, (uint32_t)size);
 } else if (size_cells == 2) {
  fdt64_st(prop, size);
 } else {
  return -FDT_ERR_BADNCELLS;
 }

 return fdt_appendprop(fdt, nodeoffset, name, data,
         (addr_cells + size_cells) * sizeof(fdt32_t));
}
