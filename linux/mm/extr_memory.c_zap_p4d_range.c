
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {int dummy; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;
 unsigned long zap_pud_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,struct zap_details*) ;

__attribute__((used)) static inline unsigned long zap_p4d_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma, pgd_t *pgd,
    unsigned long addr, unsigned long end,
    struct zap_details *details)
{
 p4d_t *p4d;
 unsigned long next;

 p4d = p4d_offset(pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_none_or_clear_bad(p4d))
   continue;
  next = zap_pud_range(tlb, vma, p4d, addr, next, details);
 } while (p4d++, addr = next, addr != end);

 return addr;
}
