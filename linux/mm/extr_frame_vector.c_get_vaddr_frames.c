
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct frame_vector {unsigned int nr_allocated; int got_ref; int is_pfns; int nr_frames; scalar_t__ ptrs; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 unsigned long PAGE_SIZE ;
 int VM_IO ;
 int VM_PFNMAP ;
 scalar_t__ WARN_ON_ONCE (int) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma_intersection (struct mm_struct*,unsigned long,unsigned long) ;
 int follow_pfn (struct vm_area_struct*,unsigned long,unsigned long*) ;
 unsigned long* frame_vector_pfns (struct frame_vector*) ;
 int get_user_pages_locked (unsigned long,unsigned int,unsigned int,struct page**,int*) ;
 unsigned long untagged_addr (unsigned long) ;
 int up_read (int *) ;
 scalar_t__ vma_is_fsdax (struct vm_area_struct*) ;

int get_vaddr_frames(unsigned long start, unsigned int nr_frames,
       unsigned int gup_flags, struct frame_vector *vec)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 int ret = 0;
 int err;
 int locked;

 if (nr_frames == 0)
  return 0;

 if (WARN_ON_ONCE(nr_frames > vec->nr_allocated))
  nr_frames = vec->nr_allocated;

 start = untagged_addr(start);

 down_read(&mm->mmap_sem);
 locked = 1;
 vma = find_vma_intersection(mm, start, start + 1);
 if (!vma) {
  ret = -EFAULT;
  goto out;
 }
 if (vma_is_fsdax(vma)) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (!(vma->vm_flags & (VM_IO | VM_PFNMAP))) {
  vec->got_ref = 1;
  vec->is_pfns = 0;
  ret = get_user_pages_locked(start, nr_frames,
   gup_flags, (struct page **)(vec->ptrs), &locked);
  goto out;
 }

 vec->got_ref = 0;
 vec->is_pfns = 1;
 do {
  unsigned long *nums = frame_vector_pfns(vec);

  while (ret < nr_frames && start + PAGE_SIZE <= vma->vm_end) {
   err = follow_pfn(vma, start, &nums[ret]);
   if (err) {
    if (ret == 0)
     ret = err;
    goto out;
   }
   start += PAGE_SIZE;
   ret++;
  }




  if (ret >= nr_frames || start < vma->vm_end)
   break;
  vma = find_vma_intersection(mm, start, start + 1);
 } while (vma && vma->vm_flags & (VM_IO | VM_PFNMAP));
out:
 if (locked)
  up_read(&mm->mmap_sem);
 if (!ret)
  ret = -EFAULT;
 if (ret > 0)
  vec->nr_frames = ret;
 return ret;
}
