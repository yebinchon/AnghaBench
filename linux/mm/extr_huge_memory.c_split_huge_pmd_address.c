
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct page {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int __split_huge_pmd (struct vm_area_struct*,int *,unsigned long,int,struct page*) ;
 int * p4d_offset (int *,unsigned long) ;
 int p4d_present (int ) ;
 int * pgd_offset (int ,unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

void split_huge_pmd_address(struct vm_area_struct *vma, unsigned long address,
  bool freeze, struct page *page)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(vma->vm_mm, address);
 if (!pgd_present(*pgd))
  return;

 p4d = p4d_offset(pgd, address);
 if (!p4d_present(*p4d))
  return;

 pud = pud_offset(p4d, address);
 if (!pud_present(*pud))
  return;

 pmd = pmd_offset(pud, address);

 __split_huge_pmd(vma, pmd, address, freeze, page);
}
