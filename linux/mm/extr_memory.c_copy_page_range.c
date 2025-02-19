
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; int anon_vma; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int ENOMEM ;
 int MMU_NOTIFY_PROTECTION_PAGE ;
 int VM_HUGETLB ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int copy_hugetlb_page_range (struct mm_struct*,struct mm_struct*,struct vm_area_struct*) ;
 int copy_p4d_range (struct mm_struct*,struct mm_struct*,int *,int *,struct vm_area_struct*,unsigned long,unsigned long) ;
 int is_cow_mapping (int) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int track_pfn_copy (struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_page_range(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  struct vm_area_struct *vma)
{
 pgd_t *src_pgd, *dst_pgd;
 unsigned long next;
 unsigned long addr = vma->vm_start;
 unsigned long end = vma->vm_end;
 struct mmu_notifier_range range;
 bool is_cow;
 int ret;







 if (!(vma->vm_flags & (VM_HUGETLB | VM_PFNMAP | VM_MIXEDMAP)) &&
   !vma->anon_vma)
  return 0;

 if (is_vm_hugetlb_page(vma))
  return copy_hugetlb_page_range(dst_mm, src_mm, vma);

 if (unlikely(vma->vm_flags & VM_PFNMAP)) {




  ret = track_pfn_copy(vma);
  if (ret)
   return ret;
 }







 is_cow = is_cow_mapping(vma->vm_flags);

 if (is_cow) {
  mmu_notifier_range_init(&range, MMU_NOTIFY_PROTECTION_PAGE,
     0, vma, src_mm, addr, end);
  mmu_notifier_invalidate_range_start(&range);
 }

 ret = 0;
 dst_pgd = pgd_offset(dst_mm, addr);
 src_pgd = pgd_offset(src_mm, addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(src_pgd))
   continue;
  if (unlikely(copy_p4d_range(dst_mm, src_mm, dst_pgd, src_pgd,
         vma, addr, next))) {
   ret = -ENOMEM;
   break;
  }
 } while (dst_pgd++, src_pgd++, addr = next, addr != end);

 if (is_cow)
  mmu_notifier_invalidate_range_end(&range);
 return ret;
}
