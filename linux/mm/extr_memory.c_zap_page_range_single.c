
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {int vm_mm; } ;
struct mmu_notifier_range {int end; } ;
struct mmu_gather {int dummy; } ;


 int MMU_NOTIFY_CLEAR ;
 int lru_add_drain () ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,unsigned long) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,int ) ;
 int tlb_gather_mmu (struct mmu_gather*,int ,unsigned long,int ) ;
 int unmap_single_vma (struct mmu_gather*,struct vm_area_struct*,unsigned long,int ,struct zap_details*) ;
 int update_hiwater_rss (int ) ;

__attribute__((used)) static void zap_page_range_single(struct vm_area_struct *vma, unsigned long address,
  unsigned long size, struct zap_details *details)
{
 struct mmu_notifier_range range;
 struct mmu_gather tlb;

 lru_add_drain();
 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    address, address + size);
 tlb_gather_mmu(&tlb, vma->vm_mm, address, range.end);
 update_hiwater_rss(vma->vm_mm);
 mmu_notifier_invalidate_range_start(&range);
 unmap_single_vma(&tlb, vma, address, range.end, details);
 mmu_notifier_invalidate_range_end(&range);
 tlb_finish_mmu(&tlb, address, range.end);
}
