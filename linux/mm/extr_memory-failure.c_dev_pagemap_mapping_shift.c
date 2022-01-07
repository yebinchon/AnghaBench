
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct page {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PMD_SHIFT ;
 unsigned long PUD_SHIFT ;
 int * p4d_offset (int *,unsigned long) ;
 int p4d_present (int ) ;
 int * pgd_offset (int ,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_devmap (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pte_devmap (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_present (int ) ;
 scalar_t__ pud_devmap (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 unsigned long vma_address (struct page*,struct vm_area_struct*) ;

__attribute__((used)) static unsigned long dev_pagemap_mapping_shift(struct page *page,
  struct vm_area_struct *vma)
{
 unsigned long address = vma_address(page, vma);
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pgd = pgd_offset(vma->vm_mm, address);
 if (!pgd_present(*pgd))
  return 0;
 p4d = p4d_offset(pgd, address);
 if (!p4d_present(*p4d))
  return 0;
 pud = pud_offset(p4d, address);
 if (!pud_present(*pud))
  return 0;
 if (pud_devmap(*pud))
  return PUD_SHIFT;
 pmd = pmd_offset(pud, address);
 if (!pmd_present(*pmd))
  return 0;
 if (pmd_devmap(*pmd))
  return PMD_SHIFT;
 pte = pte_offset_map(pmd, address);
 if (!pte_present(*pte))
  return 0;
 if (pte_devmap(*pte))
  return PAGE_SHIFT;
 return 0;
}
