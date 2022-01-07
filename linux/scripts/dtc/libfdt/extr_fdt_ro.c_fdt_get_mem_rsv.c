
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fdt_reserve_entry {int size; int address; } ;


 int FDT_ERR_BADOFFSET ;
 int FDT_RO_PROBE (void const*) ;
 int fdt64_ld (int *) ;
 struct fdt_reserve_entry* fdt_mem_rsv (void const*,int) ;

int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size)
{
 const struct fdt_reserve_entry *re;

 FDT_RO_PROBE(fdt);
 re = fdt_mem_rsv(fdt, n);
 if (!re)
  return -FDT_ERR_BADOFFSET;

 *address = fdt64_ld(&re->address);
 *size = fdt64_ld(&re->size);
 return 0;
}
