
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int VIRTUAL_BUG_ON (int) ;
 int WARN_ON_ONCE (scalar_t__) ;
 int is_vmalloc_or_module_addr (void const*) ;
 scalar_t__ p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 struct page* pte_page (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap (int *) ;
 scalar_t__ pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

struct page *vmalloc_to_page(const void *vmalloc_addr)
{
 unsigned long addr = (unsigned long) vmalloc_addr;
 struct page *page = ((void*)0);
 pgd_t *pgd = pgd_offset_k(addr);
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep, pte;





 VIRTUAL_BUG_ON(!is_vmalloc_or_module_addr(vmalloc_addr));

 if (pgd_none(*pgd))
  return ((void*)0);
 p4d = p4d_offset(pgd, addr);
 if (p4d_none(*p4d))
  return ((void*)0);
 pud = pud_offset(p4d, addr);
 WARN_ON_ONCE(pud_bad(*pud));
 if (pud_none(*pud) || pud_bad(*pud))
  return ((void*)0);
 pmd = pmd_offset(pud, addr);
 WARN_ON_ONCE(pmd_bad(*pmd));
 if (pmd_none(*pmd) || pmd_bad(*pmd))
  return ((void*)0);

 ptep = pte_offset_map(pmd, addr);
 pte = *ptep;
 if (pte_present(pte))
  page = pte_page(pte);
 pte_unmap(ptep);
 return page;
}
