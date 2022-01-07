
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;


 int FDT_RW_PROBE (void*) ;
 void* cpu_to_fdt64 (int ) ;
 struct fdt_reserve_entry* fdt_mem_rsv_w_ (void*,int ) ;
 int fdt_num_mem_rsv (void*) ;
 int fdt_splice_mem_rsv_ (void*,struct fdt_reserve_entry*,int ,int) ;

int fdt_add_mem_rsv(void *fdt, uint64_t address, uint64_t size)
{
 struct fdt_reserve_entry *re;
 int err;

 FDT_RW_PROBE(fdt);

 re = fdt_mem_rsv_w_(fdt, fdt_num_mem_rsv(fdt));
 err = fdt_splice_mem_rsv_(fdt, re, 0, 1);
 if (err)
  return err;

 re->address = cpu_to_fdt64(address);
 re->size = cpu_to_fdt64(size);
 return 0;
}
