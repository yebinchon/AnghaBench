
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_fn_t ;
typedef int pgd_t ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int apply_to_p4d_range (struct mm_struct*,int *,unsigned long,unsigned long,int ,void*) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;

int apply_to_page_range(struct mm_struct *mm, unsigned long addr,
   unsigned long size, pte_fn_t fn, void *data)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long end = addr + size;
 int err;

 if (WARN_ON(addr >= end))
  return -EINVAL;

 pgd = pgd_offset(mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  err = apply_to_p4d_range(mm, pgd, addr, next, fn, data);
  if (err)
   break;
 } while (pgd++, addr = next, addr != end);

 return err;
}
