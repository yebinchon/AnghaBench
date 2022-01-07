
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {scalar_t__ private; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 int EACCES ;
 scalar_t__ pfn_modify_allowed (int ,int ) ;
 int pte_pfn (int ) ;

__attribute__((used)) static int prot_none_pte_entry(pte_t *pte, unsigned long addr,
          unsigned long next, struct mm_walk *walk)
{
 return pfn_modify_allowed(pte_pfn(*pte), *(pgprot_t *)(walk->private)) ?
  0 : -EACCES;
}
