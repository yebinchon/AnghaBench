
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static pmd_t *mm_alloc_pmd(struct mm_struct *mm, unsigned long address)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;

 pgd = pgd_offset(mm, address);
 p4d = p4d_alloc(mm, pgd, address);
 if (!p4d)
  return ((void*)0);
 pud = pud_alloc(mm, p4d, address);
 if (!pud)
  return ((void*)0);





 return pmd_alloc(mm, pud, address);
}
