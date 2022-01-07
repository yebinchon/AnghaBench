
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_unmapped_area_info {unsigned long length; unsigned long high_limit; int low_limit; scalar_t__ flags; scalar_t__ align_mask; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_SIZE ;
 int TASK_UNMAPPED_BASE ;
 int VM_BUG_ON (int) ;
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ;
 unsigned long arch_get_mmap_base (unsigned long,int ) ;
 unsigned long arch_get_mmap_end (unsigned long) ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma_prev (struct mm_struct*,unsigned long,struct vm_area_struct**) ;
 int max (int ,unsigned long const) ;
 unsigned long const mmap_min_addr ;
 scalar_t__ offset_in_page (unsigned long) ;
 unsigned long vm_end_gap (struct vm_area_struct*) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;
 unsigned long vm_unmapped_area (struct vm_unmapped_area_info*) ;

unsigned long
arch_get_unmapped_area_topdown(struct file *filp, unsigned long addr,
     unsigned long len, unsigned long pgoff,
     unsigned long flags)
{
 struct vm_area_struct *vma, *prev;
 struct mm_struct *mm = current->mm;
 struct vm_unmapped_area_info info;
 const unsigned long mmap_end = arch_get_mmap_end(addr);


 if (len > mmap_end - mmap_min_addr)
  return -ENOMEM;

 if (flags & MAP_FIXED)
  return addr;


 if (addr) {
  addr = PAGE_ALIGN(addr);
  vma = find_vma_prev(mm, addr, &prev);
  if (mmap_end - len >= addr && addr >= mmap_min_addr &&
    (!vma || addr + len <= vm_start_gap(vma)) &&
    (!prev || addr >= vm_end_gap(prev)))
   return addr;
 }

 info.flags = VM_UNMAPPED_AREA_TOPDOWN;
 info.length = len;
 info.low_limit = max(PAGE_SIZE, mmap_min_addr);
 info.high_limit = arch_get_mmap_base(addr, mm->mmap_base);
 info.align_mask = 0;
 addr = vm_unmapped_area(&info);







 if (offset_in_page(addr)) {
  VM_BUG_ON(addr != -ENOMEM);
  info.flags = 0;
  info.low_limit = TASK_UNMAPPED_BASE;
  info.high_limit = mmap_end;
  addr = vm_unmapped_area(&info);
 }

 return addr;
}
