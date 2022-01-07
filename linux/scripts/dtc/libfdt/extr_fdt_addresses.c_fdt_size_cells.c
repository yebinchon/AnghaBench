
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int fdt_cells (void const*,int,char*) ;

int fdt_size_cells(const void *fdt, int nodeoffset)
{
 int val;

 val = fdt_cells(fdt, nodeoffset, "#size-cells");
 if (val == -FDT_ERR_NOTFOUND)
  return 1;
 return val;
}
