
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int __migration_entry_wait (struct mm_struct*,int *,int *) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 int * pte_offset_map (int *,unsigned long) ;

void migration_entry_wait(struct mm_struct *mm, pmd_t *pmd,
    unsigned long address)
{
 spinlock_t *ptl = pte_lockptr(mm, pmd);
 pte_t *ptep = pte_offset_map(pmd, address);
 __migration_entry_wait(mm, ptep, ptl);
}
