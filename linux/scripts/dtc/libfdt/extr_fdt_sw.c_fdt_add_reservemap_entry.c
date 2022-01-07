
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;


 int FDT_ERR_NOSPACE ;
 int FDT_SW_PROBE_MEMRSV (void*) ;
 void* cpu_to_fdt64 (int ) ;
 int fdt_off_dt_struct (void*) ;
 int fdt_set_off_dt_struct (void*,int) ;
 int fdt_totalsize (void*) ;

int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size)
{
 struct fdt_reserve_entry *re;
 int offset;

 FDT_SW_PROBE_MEMRSV(fdt);

 offset = fdt_off_dt_struct(fdt);
 if ((offset + sizeof(*re)) > fdt_totalsize(fdt))
  return -FDT_ERR_NOSPACE;

 re = (struct fdt_reserve_entry *)((char *)fdt + offset);
 re->address = cpu_to_fdt64(addr);
 re->size = cpu_to_fdt64(size);

 fdt_set_off_dt_struct(fdt, offset + sizeof(*re));

 return 0;
}
