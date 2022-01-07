
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 int init_mm ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 scalar_t__ vmap_pte_range (int *,unsigned long,unsigned long,int ,struct page**,int*) ;

__attribute__((used)) static int vmap_pmd_range(pud_t *pud, unsigned long addr,
  unsigned long end, pgprot_t prot, struct page **pages, int *nr)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_alloc(&init_mm, pud, addr);
 if (!pmd)
  return -ENOMEM;
 do {
  next = pmd_addr_end(addr, end);
  if (vmap_pte_range(pmd, addr, next, prot, pages, nr))
   return -ENOMEM;
 } while (pmd++, addr = next, addr != end);
 return 0;
}
