
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int spinlock_t ;
typedef int pud_t ;


 scalar_t__ likely (int) ;
 scalar_t__ pud_devmap (int ) ;
 int * pud_lock (int ,int *) ;
 scalar_t__ pud_trans_huge (int ) ;
 int spin_unlock (int *) ;

spinlock_t *__pud_trans_huge_lock(pud_t *pud, struct vm_area_struct *vma)
{
 spinlock_t *ptl;

 ptl = pud_lock(vma->vm_mm, pud);
 if (likely(pud_trans_huge(*pud) || pud_devmap(*pud)))
  return ptl;
 spin_unlock(ptl);
 return ((void*)0);
}
