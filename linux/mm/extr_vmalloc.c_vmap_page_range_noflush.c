
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;
 int vmap_p4d_range (int *,unsigned long,unsigned long,int ,struct page**,int*) ;

__attribute__((used)) static int vmap_page_range_noflush(unsigned long start, unsigned long end,
       pgprot_t prot, struct page **pages)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long addr = start;
 int err = 0;
 int nr = 0;

 BUG_ON(addr >= end);
 pgd = pgd_offset_k(addr);
 do {
  next = pgd_addr_end(addr, end);
  err = vmap_p4d_range(pgd, addr, next, prot, pages, &nr);
  if (err)
   return err;
 } while (pgd++, addr = next, addr != end);

 return nr;
}
