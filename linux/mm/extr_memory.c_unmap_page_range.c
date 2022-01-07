
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {int vm_mm; } ;
struct mmu_gather {int dummy; } ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 int tlb_end_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int tlb_start_vma (struct mmu_gather*,struct vm_area_struct*) ;
 unsigned long zap_p4d_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,struct zap_details*) ;

void unmap_page_range(struct mmu_gather *tlb,
        struct vm_area_struct *vma,
        unsigned long addr, unsigned long end,
        struct zap_details *details)
{
 pgd_t *pgd;
 unsigned long next;

 BUG_ON(addr >= end);
 tlb_start_vma(tlb, vma);
 pgd = pgd_offset(vma->vm_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  next = zap_p4d_range(tlb, vma, pgd, addr, next, details);
 } while (pgd++, addr = next, addr != end);
 tlb_end_vma(tlb, vma);
}
