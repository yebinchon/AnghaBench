
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_mm; struct vm_area_struct* vm_next; int vm_userfaultfd_ctx; int vm_file; int anon_vma; int vm_flags; scalar_t__ vm_pgoff; struct vm_area_struct* vm_prev; } ;
struct mm_struct {int dummy; } ;
struct mempolicy {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int EFAULT ;
 unsigned long PAGE_SHIFT ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ mpol_equal (int ,struct mempolicy*) ;
 int split_vma (int ,struct vm_area_struct*,unsigned long,int) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int ,int ,int ,scalar_t__,struct mempolicy*,int ) ;
 int vma_policy (struct vm_area_struct*) ;
 int vma_replace_policy (struct vm_area_struct*,struct mempolicy*) ;

__attribute__((used)) static int mbind_range(struct mm_struct *mm, unsigned long start,
         unsigned long end, struct mempolicy *new_pol)
{
 struct vm_area_struct *next;
 struct vm_area_struct *prev;
 struct vm_area_struct *vma;
 int err = 0;
 pgoff_t pgoff;
 unsigned long vmstart;
 unsigned long vmend;

 vma = find_vma(mm, start);
 if (!vma || vma->vm_start > start)
  return -EFAULT;

 prev = vma->vm_prev;
 if (start > vma->vm_start)
  prev = vma;

 for (; vma && vma->vm_start < end; prev = vma, vma = next) {
  next = vma->vm_next;
  vmstart = max(start, vma->vm_start);
  vmend = min(end, vma->vm_end);

  if (mpol_equal(vma_policy(vma), new_pol))
   continue;

  pgoff = vma->vm_pgoff +
   ((vmstart - vma->vm_start) >> PAGE_SHIFT);
  prev = vma_merge(mm, prev, vmstart, vmend, vma->vm_flags,
     vma->anon_vma, vma->vm_file, pgoff,
     new_pol, vma->vm_userfaultfd_ctx);
  if (prev) {
   vma = prev;
   next = vma->vm_next;
   if (mpol_equal(vma_policy(vma), new_pol))
    continue;

   goto replace;
  }
  if (vma->vm_start != vmstart) {
   err = split_vma(vma->vm_mm, vma, vmstart, 1);
   if (err)
    goto out;
  }
  if (vma->vm_end != vmend) {
   err = split_vma(vma->vm_mm, vma, vmend, 0);
   if (err)
    goto out;
  }
 replace:
  err = vma_replace_policy(vma, new_pol);
  if (err)
   goto out;
 }

 out:
 return err;
}
