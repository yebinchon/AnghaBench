
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int WARN_ON (int) ;
 int init_mm ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 int ptep_get_and_clear (int *,unsigned long,int *) ;

__attribute__((used)) static void vunmap_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end)
{
 pte_t *pte;

 pte = pte_offset_kernel(pmd, addr);
 do {
  pte_t ptent = ptep_get_and_clear(&init_mm, addr, pte);
  WARN_ON(!pte_none(ptent) && !pte_present(ptent));
 } while (pte++, addr += PAGE_SIZE, addr != end);
}
