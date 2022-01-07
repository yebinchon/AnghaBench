
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_fn_t ;
typedef int pmd_t ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int apply_to_pte_range (struct mm_struct*,int *,unsigned long,unsigned long,int ,void*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pud_huge (int ) ;

__attribute__((used)) static int apply_to_pmd_range(struct mm_struct *mm, pud_t *pud,
         unsigned long addr, unsigned long end,
         pte_fn_t fn, void *data)
{
 pmd_t *pmd;
 unsigned long next;
 int err;

 BUG_ON(pud_huge(*pud));

 pmd = pmd_alloc(mm, pud, addr);
 if (!pmd)
  return -ENOMEM;
 do {
  next = pmd_addr_end(addr, end);
  err = apply_to_pte_range(mm, pmd, addr, next, fn, data);
  if (err)
   break;
 } while (pmd++, addr = next, addr != end);
 return err;
}
