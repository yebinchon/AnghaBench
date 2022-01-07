
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;


 long EINVAL ;
 int can_madv_lru_vma (struct vm_area_struct*) ;
 int lru_add_drain () ;
 int madvise_cold_page_range (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 int tlb_gather_mmu (struct mmu_gather*,struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static long madvise_cold(struct vm_area_struct *vma,
   struct vm_area_struct **prev,
   unsigned long start_addr, unsigned long end_addr)
{
 struct mm_struct *mm = vma->vm_mm;
 struct mmu_gather tlb;

 *prev = vma;
 if (!can_madv_lru_vma(vma))
  return -EINVAL;

 lru_add_drain();
 tlb_gather_mmu(&tlb, mm, start_addr, end_addr);
 madvise_cold_page_range(&tlb, vma, start_addr, end_addr);
 tlb_finish_mmu(&tlb, start_addr, end_addr);

 return 0;
}
