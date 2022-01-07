
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_userfaultfd_ctx; int vm_file; int anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ map_count; } ;
typedef scalar_t__ pgoff_t ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_DONTCOPY ;
 unsigned long VM_DONTDUMP ;
 int VM_IO ;
 unsigned long VM_RAND_READ ;
 unsigned long VM_SEQ_READ ;
 int VM_SHARED ;
 unsigned long VM_SPECIAL ;
 unsigned long VM_WIPEONFORK ;
 int __split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 int hugepage_madvise (struct vm_area_struct*,unsigned long*,int) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 int ksm_madvise (struct vm_area_struct*,unsigned long,unsigned long,int,unsigned long*) ;
 scalar_t__ sysctl_max_map_count ;
 scalar_t__ unlikely (int) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ,int ,scalar_t__,int ,int ) ;
 int vma_policy (struct vm_area_struct*) ;

__attribute__((used)) static long madvise_behavior(struct vm_area_struct *vma,
       struct vm_area_struct **prev,
       unsigned long start, unsigned long end, int behavior)
{
 struct mm_struct *mm = vma->vm_mm;
 int error = 0;
 pgoff_t pgoff;
 unsigned long new_flags = vma->vm_flags;

 switch (behavior) {
 case 132:
  new_flags = new_flags & ~VM_RAND_READ & ~VM_SEQ_READ;
  break;
 case 130:
  new_flags = (new_flags & ~VM_RAND_READ) | VM_SEQ_READ;
  break;
 case 131:
  new_flags = (new_flags & ~VM_SEQ_READ) | VM_RAND_READ;
  break;
 case 137:
  new_flags |= VM_DONTCOPY;
  break;
 case 139:
  if (vma->vm_flags & VM_IO) {
   error = -EINVAL;
   goto out;
  }
  new_flags &= ~VM_DONTCOPY;
  break;
 case 128:

  if (vma->vm_file || vma->vm_flags & VM_SHARED) {
   error = -EINVAL;
   goto out;
  }
  new_flags |= VM_WIPEONFORK;
  break;
 case 135:
  new_flags &= ~VM_WIPEONFORK;
  break;
 case 138:
  new_flags |= VM_DONTDUMP;
  break;
 case 140:
  if (!is_vm_hugetlb_page(vma) && new_flags & VM_SPECIAL) {
   error = -EINVAL;
   goto out;
  }
  new_flags &= ~VM_DONTDUMP;
  break;
 case 134:
 case 129:
  error = ksm_madvise(vma, start, end, behavior, &new_flags);
  if (error)
   goto out_convert_errno;
  break;
 case 136:
 case 133:
  error = hugepage_madvise(vma, &new_flags, behavior);
  if (error)
   goto out_convert_errno;
  break;
 }

 if (new_flags == vma->vm_flags) {
  *prev = vma;
  goto out;
 }

 pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
 *prev = vma_merge(mm, *prev, start, end, new_flags, vma->anon_vma,
     vma->vm_file, pgoff, vma_policy(vma),
     vma->vm_userfaultfd_ctx);
 if (*prev) {
  vma = *prev;
  goto success;
 }

 *prev = vma;

 if (start != vma->vm_start) {
  if (unlikely(mm->map_count >= sysctl_max_map_count)) {
   error = -ENOMEM;
   goto out;
  }
  error = __split_vma(mm, vma, start, 1);
  if (error)
   goto out_convert_errno;
 }

 if (end != vma->vm_end) {
  if (unlikely(mm->map_count >= sysctl_max_map_count)) {
   error = -ENOMEM;
   goto out;
  }
  error = __split_vma(mm, vma, end, 0);
  if (error)
   goto out_convert_errno;
 }

success:



 vma->vm_flags = new_flags;

out_convert_errno:




 if (error == -ENOMEM)
  error = -EAGAIN;
out:
 return error;
}
