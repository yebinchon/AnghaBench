
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;



pte_t *huge_pmd_share(struct mm_struct *mm, unsigned long addr, pud_t *pud)
{
 return ((void*)0);
}
