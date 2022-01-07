
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int init_mm ;
 int pfn_pte (int,int ) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int pte_none (int ) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

__attribute__((used)) static int ioremap_pte_range(pmd_t *pmd, unsigned long addr,
  unsigned long end, phys_addr_t phys_addr, pgprot_t prot)
{
 pte_t *pte;
 u64 pfn;

 pfn = phys_addr >> PAGE_SHIFT;
 pte = pte_alloc_kernel(pmd, addr);
 if (!pte)
  return -ENOMEM;
 do {
  BUG_ON(!pte_none(*pte));
  set_pte_at(&init_mm, addr, pte, pfn_pte(pfn, prot));
  pfn++;
 } while (pte++, addr += PAGE_SIZE, addr != end);
 return 0;
}
