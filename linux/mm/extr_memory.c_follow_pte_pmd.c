
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int __cond_lock (int *,int) ;
 int __follow_pte_pmd (struct mm_struct*,unsigned long,struct mmu_notifier_range*,int **,int **,int **) ;

int follow_pte_pmd(struct mm_struct *mm, unsigned long address,
     struct mmu_notifier_range *range,
     pte_t **ptepp, pmd_t **pmdpp, spinlock_t **ptlp)
{
 int res;


 (void) __cond_lock(*ptlp,
      !(res = __follow_pte_pmd(mm, address, range,
          ptepp, pmdpp, ptlp)));
 return res;
}
