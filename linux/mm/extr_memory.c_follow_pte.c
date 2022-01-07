
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int __cond_lock (int *,int) ;
 int __follow_pte_pmd (struct mm_struct*,unsigned long,int *,int **,int *,int **) ;

__attribute__((used)) static inline int follow_pte(struct mm_struct *mm, unsigned long address,
        pte_t **ptepp, spinlock_t **ptlp)
{
 int res;


 (void) __cond_lock(*ptlp,
      !(res = __follow_pte_pmd(mm, address, ((void*)0),
          ptepp, ((void*)0), ptlp)));
 return res;
}
