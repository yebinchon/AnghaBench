
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int mk_pmd (struct page*,int ) ;
 int mm_inc_nr_ptes (struct mm_struct*) ;
 int pgtable_trans_huge_deposit (struct mm_struct*,int *,int ) ;
 int pmd_mkhuge (int ) ;
 int pmd_none (int ) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static bool set_huge_zero_page(pgtable_t pgtable, struct mm_struct *mm,
  struct vm_area_struct *vma, unsigned long haddr, pmd_t *pmd,
  struct page *zero_page)
{
 pmd_t entry;
 if (!pmd_none(*pmd))
  return 0;
 entry = mk_pmd(zero_page, vma->vm_page_prot);
 entry = pmd_mkhuge(entry);
 if (pgtable)
  pgtable_trans_huge_deposit(mm, pmd, pgtable);
 set_pmd_at(mm, haddr, pmd, entry);
 mm_inc_nr_ptes(mm);
 return 1;
}
