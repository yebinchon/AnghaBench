
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int flush_cache_vmap (unsigned long,unsigned long) ;
 int ioremap_p4d_range (int *,unsigned long,unsigned long,unsigned long,int ) ;
 int might_sleep () ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;

int ioremap_page_range(unsigned long addr,
         unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
 pgd_t *pgd;
 unsigned long start;
 unsigned long next;
 int err;

 might_sleep();
 BUG_ON(addr >= end);

 start = addr;
 pgd = pgd_offset_k(addr);
 do {
  next = pgd_addr_end(addr, end);
  err = ioremap_p4d_range(pgd, addr, next, phys_addr, prot);
  if (err)
   break;
 } while (pgd++, phys_addr += (next - addr), addr = next, addr != end);

 flush_cache_vmap(start, end);

 return err;
}
