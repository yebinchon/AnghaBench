
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {unsigned char* private; } ;
typedef int pte_t ;


 int BUG () ;
 scalar_t__ PAGE_SIZE ;
 int huge_pte_none (int ) ;
 int huge_ptep_get (int *) ;

__attribute__((used)) static int mincore_hugetlb(pte_t *pte, unsigned long hmask, unsigned long addr,
   unsigned long end, struct mm_walk *walk)
{
 BUG();

 return 0;
}
