
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADSTATE ;
 scalar_t__ fdt_off_dt_strings (void*) ;
 int fdt_sw_probe_ (void*) ;

__attribute__((used)) static int fdt_sw_probe_memrsv_(void *fdt)
{
 int err = fdt_sw_probe_(fdt);
 if (err)
  return err;

 if (fdt_off_dt_strings(fdt) != 0)
  return -FDT_ERR_BADSTATE;
 return 0;
}
