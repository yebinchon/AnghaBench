
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_5__ {int page_table_lock; } ;


 int ENOMEM ;
 TYPE_1__ init_mm ;
 scalar_t__ likely (int ) ;
 int pmd_none (int ) ;
 int pmd_populate_kernel (TYPE_1__*,int *,int *) ;
 int * pte_alloc_one_kernel (TYPE_1__*) ;
 int pte_free_kernel (TYPE_1__*,int *) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __pte_alloc_kernel(pmd_t *pmd)
{
 pte_t *new = pte_alloc_one_kernel(&init_mm);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 spin_lock(&init_mm.page_table_lock);
 if (likely(pmd_none(*pmd))) {
  pmd_populate_kernel(&init_mm, pmd, new);
  new = ((void*)0);
 }
 spin_unlock(&init_mm.page_table_lock);
 if (new)
  pte_free_kernel(&init_mm, new);
 return 0;
}
