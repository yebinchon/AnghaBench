
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_fn_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int apply_to_pud_range (struct mm_struct*,int *,unsigned long,unsigned long,int ,void*) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int * p4d_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static int apply_to_p4d_range(struct mm_struct *mm, pgd_t *pgd,
         unsigned long addr, unsigned long end,
         pte_fn_t fn, void *data)
{
 p4d_t *p4d;
 unsigned long next;
 int err;

 p4d = p4d_alloc(mm, pgd, addr);
 if (!p4d)
  return -ENOMEM;
 do {
  next = p4d_addr_end(addr, end);
  err = apply_to_pud_range(mm, p4d, addr, next, fn, data);
  if (err)
   break;
 } while (p4d++, addr = next, addr != end);
 return err;
}
