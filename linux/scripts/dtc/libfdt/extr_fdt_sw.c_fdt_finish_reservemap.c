
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_add_reservemap_entry (void*,int ,int ) ;
 int fdt_set_off_dt_strings (void*,int ) ;
 int fdt_totalsize (void*) ;

int fdt_finish_reservemap(void *fdt)
{
 int err = fdt_add_reservemap_entry(fdt, 0, 0);

 if (err)
  return err;

 fdt_set_off_dt_strings(fdt, fdt_totalsize(fdt));
 return 0;
}
