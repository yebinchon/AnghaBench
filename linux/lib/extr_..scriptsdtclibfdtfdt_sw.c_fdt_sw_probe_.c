
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADMAGIC ;
 int FDT_ERR_BADSTATE ;
 scalar_t__ FDT_MAGIC ;
 scalar_t__ FDT_SW_MAGIC ;
 scalar_t__ fdt_magic (void*) ;

__attribute__((used)) static int fdt_sw_probe_(void *fdt)
{
 if (fdt_magic(fdt) == FDT_MAGIC)
  return -FDT_ERR_BADSTATE;
 else if (fdt_magic(fdt) != FDT_SW_MAGIC)
  return -FDT_ERR_BADMAGIC;
 return 0;
}
