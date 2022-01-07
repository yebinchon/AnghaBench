
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;


 int IS_ALIGNED (unsigned long,unsigned long) ;
 unsigned long PUD_SIZE ;
 int ioremap_pud_enabled () ;
 int pud_free_pmd_page (int *,unsigned long) ;
 scalar_t__ pud_present (int ) ;
 int pud_set_huge (int *,unsigned long,int ) ;

__attribute__((used)) static int ioremap_try_huge_pud(pud_t *pud, unsigned long addr,
    unsigned long end, phys_addr_t phys_addr,
    pgprot_t prot)
{
 if (!ioremap_pud_enabled())
  return 0;

 if ((end - addr) != PUD_SIZE)
  return 0;

 if (!IS_ALIGNED(addr, PUD_SIZE))
  return 0;

 if (!IS_ALIGNED(phys_addr, PUD_SIZE))
  return 0;

 if (pud_present(*pud) && !pud_free_pmd_page(pud, addr))
  return 0;

 return pud_set_huge(pud, phys_addr, prot);
}
