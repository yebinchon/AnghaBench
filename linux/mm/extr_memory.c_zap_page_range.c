
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; struct vm_area_struct* vm_next; int vm_mm; } ;
struct mmu_notifier_range {scalar_t__ end; } ;
struct mmu_gather {int dummy; } ;


 int MMU_NOTIFY_CLEAR ;
 int lru_add_drain () ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,unsigned long) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,scalar_t__) ;
 int tlb_gather_mmu (struct mmu_gather*,int ,unsigned long,scalar_t__) ;
 int unmap_single_vma (struct mmu_gather*,struct vm_area_struct*,unsigned long,scalar_t__,int *) ;
 int update_hiwater_rss (int ) ;

void zap_page_range(struct vm_area_struct *vma, unsigned long start,
  unsigned long size)
{
 struct mmu_notifier_range range;
 struct mmu_gather tlb;

 lru_add_drain();
 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    start, start + size);
 tlb_gather_mmu(&tlb, vma->vm_mm, start, range.end);
 update_hiwater_rss(vma->vm_mm);
 mmu_notifier_invalidate_range_start(&range);
 for ( ; vma && vma->vm_start < range.end; vma = vma->vm_next)
  unmap_single_vma(&tlb, vma, start, range.end, ((void*)0));
 mmu_notifier_invalidate_range_end(&range);
 tlb_finish_mmu(&tlb, start, range.end);
}
