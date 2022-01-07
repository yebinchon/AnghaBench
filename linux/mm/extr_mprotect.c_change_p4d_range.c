
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 scalar_t__ change_pud_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,int,int) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long change_p4d_range(struct vm_area_struct *vma,
  pgd_t *pgd, unsigned long addr, unsigned long end,
  pgprot_t newprot, int dirty_accountable, int prot_numa)
{
 p4d_t *p4d;
 unsigned long next;
 unsigned long pages = 0;

 p4d = p4d_offset(pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_none_or_clear_bad(p4d))
   continue;
  pages += change_pud_range(vma, p4d, addr, next, newprot,
     dirty_accountable, prot_numa);
 } while (p4d++, addr = next, addr != end);

 return pages;
}
