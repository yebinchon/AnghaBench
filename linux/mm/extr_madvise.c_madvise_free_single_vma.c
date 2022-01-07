
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct mm_struct* vm_mm; } ;
struct mmu_notifier_range {scalar_t__ start; scalar_t__ end; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;


 int EINVAL ;
 int MMU_NOTIFY_CLEAR ;
 int lru_add_drain () ;
 int madvise_free_walk_ops ;
 scalar_t__ max (scalar_t__,unsigned long) ;
 scalar_t__ min (scalar_t__,unsigned long) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,scalar_t__,scalar_t__) ;
 int tlb_end_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int tlb_finish_mmu (struct mmu_gather*,scalar_t__,scalar_t__) ;
 int tlb_gather_mmu (struct mmu_gather*,struct mm_struct*,scalar_t__,scalar_t__) ;
 int tlb_start_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int update_hiwater_rss (struct mm_struct*) ;
 int vma_is_anonymous (struct vm_area_struct*) ;
 int walk_page_range (struct mm_struct*,scalar_t__,scalar_t__,int *,struct mmu_gather*) ;

__attribute__((used)) static int madvise_free_single_vma(struct vm_area_struct *vma,
   unsigned long start_addr, unsigned long end_addr)
{
 struct mm_struct *mm = vma->vm_mm;
 struct mmu_notifier_range range;
 struct mmu_gather tlb;


 if (!vma_is_anonymous(vma))
  return -EINVAL;

 range.start = max(vma->vm_start, start_addr);
 if (range.start >= vma->vm_end)
  return -EINVAL;
 range.end = min(vma->vm_end, end_addr);
 if (range.end <= vma->vm_start)
  return -EINVAL;
 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, mm,
    range.start, range.end);

 lru_add_drain();
 tlb_gather_mmu(&tlb, mm, range.start, range.end);
 update_hiwater_rss(mm);

 mmu_notifier_invalidate_range_start(&range);
 tlb_start_vma(&tlb, vma);
 walk_page_range(vma->vm_mm, range.start, range.end,
   &madvise_free_walk_ops, &tlb);
 tlb_end_vma(&tlb, vma);
 mmu_notifier_invalidate_range_end(&range);
 tlb_finish_mmu(&tlb, range.start, range.end);

 return 0;
}
