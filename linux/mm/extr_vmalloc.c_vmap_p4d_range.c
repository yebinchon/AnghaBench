
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int init_mm ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int * p4d_alloc (int *,int *,unsigned long) ;
 scalar_t__ vmap_pud_range (int *,unsigned long,unsigned long,int ,struct page**,int*) ;

__attribute__((used)) static int vmap_p4d_range(pgd_t *pgd, unsigned long addr,
  unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
 p4d_t *p4d;
 unsigned long next;

 p4d = p4d_alloc(&init_mm, pgd, addr);
 if (!p4d)
  return -ENOMEM;
 do {
  next = p4d_addr_end(addr, end);
  if (vmap_pud_range(p4d, addr, next, prot, pages, nr))
   return -ENOMEM;
 } while (p4d++, addr = next, addr != end);
 return 0;
}
