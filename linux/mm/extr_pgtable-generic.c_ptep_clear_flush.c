
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 scalar_t__ pte_accessible (struct mm_struct*,int ) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;

pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
         pte_t *ptep)
{
 struct mm_struct *mm = (vma)->vm_mm;
 pte_t pte;
 pte = ptep_get_and_clear(mm, address, ptep);
 if (pte_accessible(mm, pte))
  flush_tlb_page(vma, address);
 return pte;
}
