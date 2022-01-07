
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {TYPE_1__* mm; } ;
typedef int pud_t ;
typedef int p4d_t ;
struct TYPE_2__ {int mmap_sem; } ;


 unsigned long HPAGE_PUD_SIZE ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int cond_resched () ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_devmap (int ) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_trans_huge (int ) ;
 int rwsem_is_locked (int *) ;
 int split_huge_pud (struct vm_area_struct*,int *,unsigned long) ;
 scalar_t__ zap_huge_pud (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long) ;
 unsigned long zap_pmd_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,struct zap_details*) ;

__attribute__((used)) static inline unsigned long zap_pud_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma, p4d_t *p4d,
    unsigned long addr, unsigned long end,
    struct zap_details *details)
{
 pud_t *pud;
 unsigned long next;

 pud = pud_offset(p4d, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_trans_huge(*pud) || pud_devmap(*pud)) {
   if (next - addr != HPAGE_PUD_SIZE) {
    VM_BUG_ON_VMA(!rwsem_is_locked(&tlb->mm->mmap_sem), vma);
    split_huge_pud(vma, pud, addr);
   } else if (zap_huge_pud(tlb, vma, pud, addr))
    goto next;

  }
  if (pud_none_or_clear_bad(pud))
   continue;
  next = zap_pmd_range(tlb, vma, pud, addr, next, details);
next:
  cond_resched();
 } while (pud++, addr = next, addr != end);

 return addr;
}
