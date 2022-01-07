
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;
typedef int * pgtable_t ;


 int ENOMEM ;
 scalar_t__ likely (int ) ;
 int mm_inc_nr_ptes (struct mm_struct*) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int pmd_none (int ) ;
 int pmd_populate (struct mm_struct*,int *,int *) ;
 int * pte_alloc_one (struct mm_struct*) ;
 int pte_free (struct mm_struct*,int *) ;
 int smp_wmb () ;
 int spin_unlock (int *) ;

int __pte_alloc(struct mm_struct *mm, pmd_t *pmd)
{
 spinlock_t *ptl;
 pgtable_t new = pte_alloc_one(mm);
 if (!new)
  return -ENOMEM;
 smp_wmb();

 ptl = pmd_lock(mm, pmd);
 if (likely(pmd_none(*pmd))) {
  mm_inc_nr_ptes(mm);
  pmd_populate(mm, pmd, new);
  new = ((void*)0);
 }
 spin_unlock(ptl);
 if (new)
  pte_free(mm, new);
 return 0;
}
