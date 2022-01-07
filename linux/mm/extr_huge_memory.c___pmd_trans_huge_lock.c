
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int spinlock_t ;
typedef int pmd_t ;


 scalar_t__ is_swap_pmd (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ pmd_devmap (int ) ;
 int * pmd_lock (int ,int *) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int spin_unlock (int *) ;

spinlock_t *__pmd_trans_huge_lock(pmd_t *pmd, struct vm_area_struct *vma)
{
 spinlock_t *ptl;
 ptl = pmd_lock(vma->vm_mm, pmd);
 if (likely(is_swap_pmd(*pmd) || pmd_trans_huge(*pmd) ||
   pmd_devmap(*pmd)))
  return ptl;
 spin_unlock(ptl);
 return ((void*)0);
}
