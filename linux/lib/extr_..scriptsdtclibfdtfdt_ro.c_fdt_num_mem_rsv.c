
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int size; } ;


 int FDT_ERR_TRUNCATED ;
 scalar_t__ fdt64_ld (int *) ;
 struct fdt_reserve_entry* fdt_mem_rsv (void const*,int) ;

int fdt_num_mem_rsv(const void *fdt)
{
 int i;
 const struct fdt_reserve_entry *re;

 for (i = 0; (re = fdt_mem_rsv(fdt, i)) != ((void*)0); i++) {
  if (fdt64_ld(&re->size) == 0)
   return i;
 }
 return -FDT_ERR_TRUNCATED;
}
