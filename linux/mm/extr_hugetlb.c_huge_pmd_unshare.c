
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;



int huge_pmd_unshare(struct mm_struct *mm, unsigned long *addr, pte_t *ptep)
{
 return 0;
}
