
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int mm_inc_nr_pmds (struct mm_struct*) ;
 int pgd_populate (struct mm_struct*,int *,int *) ;
 int pgd_present (int ) ;
 int * pmd_alloc_one (struct mm_struct*,unsigned long) ;
 int pmd_free (struct mm_struct*,int *) ;
 int * pud_lock (struct mm_struct*,int *) ;
 int pud_populate (struct mm_struct*,int *,int *) ;
 int pud_present (int ) ;
 int smp_wmb () ;
 int spin_unlock (int *) ;

int __pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long address)
{
 spinlock_t *ptl;
 pmd_t *new = pmd_alloc_one(mm, address);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 ptl = pud_lock(mm, pud);

 if (!pud_present(*pud)) {
  mm_inc_nr_pmds(mm);
  pud_populate(mm, pud, new);
 } else
  pmd_free(mm, new);







 spin_unlock(ptl);
 return 0;
}
