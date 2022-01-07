
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_fn_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int apply_to_pmd_range (struct mm_struct*,int *,unsigned long,unsigned long,int ,void*) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static int apply_to_pud_range(struct mm_struct *mm, p4d_t *p4d,
         unsigned long addr, unsigned long end,
         pte_fn_t fn, void *data)
{
 pud_t *pud;
 unsigned long next;
 int err;

 pud = pud_alloc(mm, p4d, addr);
 if (!pud)
  return -ENOMEM;
 do {
  next = pud_addr_end(addr, end);
  err = apply_to_pmd_range(mm, pud, addr, next, fn, data);
  if (err)
   break;
 } while (pud++, addr = next, addr != end);
 return err;
}
