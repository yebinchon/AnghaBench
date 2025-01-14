
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_userfaultfd_ctx {int dummy; } ;
struct vm_area_struct {scalar_t__ vm_pgoff; int anon_vma; } ;
struct file {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ is_mergeable_anon_vma (struct anon_vma*,int ,struct vm_area_struct*) ;
 scalar_t__ is_mergeable_vma (struct vm_area_struct*,struct file*,unsigned long,struct vm_userfaultfd_ctx) ;
 scalar_t__ vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int
can_vma_merge_after(struct vm_area_struct *vma, unsigned long vm_flags,
      struct anon_vma *anon_vma, struct file *file,
      pgoff_t vm_pgoff,
      struct vm_userfaultfd_ctx vm_userfaultfd_ctx)
{
 if (is_mergeable_vma(vma, file, vm_flags, vm_userfaultfd_ctx) &&
     is_mergeable_anon_vma(anon_vma, vma->anon_vma, vma)) {
  pgoff_t vm_pglen;
  vm_pglen = vma_pages(vma);
  if (vma->vm_pgoff + vm_pglen == vm_pgoff)
   return 1;
 }
 return 0;
}
