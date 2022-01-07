
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pud_t ;
typedef int pgprot_t ;
typedef int p4d_t ;


 scalar_t__ change_pmd_range (struct vm_area_struct*,int *,unsigned long,unsigned long,int ,int,int) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long change_pud_range(struct vm_area_struct *vma,
  p4d_t *p4d, unsigned long addr, unsigned long end,
  pgprot_t newprot, int dirty_accountable, int prot_numa)
{
 pud_t *pud;
 unsigned long next;
 unsigned long pages = 0;

 pud = pud_offset(p4d, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  pages += change_pmd_range(vma, pud, addr, next, newprot,
     dirty_accountable, prot_numa);
 } while (pud++, addr = next, addr != end);

 return pages;
}
