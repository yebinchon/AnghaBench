
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int fdt_cells (void const*,int,char*) ;

int fdt_address_cells(const void *fdt, int nodeoffset)
{
 int val;

 val = fdt_cells(fdt, nodeoffset, "#address-cells");
 if (val == -FDT_ERR_NOTFOUND)
  return 2;
 return val;
}
