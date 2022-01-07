
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int VM_BUG_ON (int ) ;
 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int * pte_alloc_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *__get_locked_pte(struct mm_struct *mm, unsigned long addr,
   spinlock_t **ptl)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(mm, addr);
 p4d = p4d_alloc(mm, pgd, addr);
 if (!p4d)
  return ((void*)0);
 pud = pud_alloc(mm, p4d, addr);
 if (!pud)
  return ((void*)0);
 pmd = pmd_alloc(mm, pud, addr);
 if (!pmd)
  return ((void*)0);

 VM_BUG_ON(pmd_trans_huge(*pmd));
 return pte_alloc_map_lock(mm, pmd, addr, ptl);
}
