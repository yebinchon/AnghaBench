
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int __migration_entry_wait (struct mm_struct*,int *,int *) ;
 int hstate_vma (struct vm_area_struct*) ;
 int * huge_pte_lockptr (int ,struct mm_struct*,int *) ;

void migration_entry_wait_huge(struct vm_area_struct *vma,
  struct mm_struct *mm, pte_t *pte)
{
 spinlock_t *ptl = huge_pte_lockptr(hstate_vma(vma), mm, pte);
 __migration_entry_wait(mm, pte, ptl);
}
