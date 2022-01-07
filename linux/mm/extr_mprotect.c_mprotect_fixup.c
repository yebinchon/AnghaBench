
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_page_prot; int vm_userfaultfd_ctx; int vm_file; int anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pgprot_t ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {int mm; } ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_ACCOUNT ;
 unsigned long VM_EXEC ;
 unsigned long VM_HUGETLB ;
 unsigned long VM_LOCKED ;
 int VM_MIXEDMAP ;
 unsigned long VM_NORESERVE ;
 int VM_PFNMAP ;
 unsigned long VM_READ ;
 unsigned long VM_SHARED ;
 unsigned long VM_SOFTDIRTY ;
 int VM_WARN_ON (unsigned long) ;
 unsigned long VM_WRITE ;
 scalar_t__ arch_has_pfn_modify_check () ;
 int change_protection (struct vm_area_struct*,unsigned long,unsigned long,int ,int,int ) ;
 TYPE_1__* current ;
 scalar_t__ may_expand_vm (struct mm_struct*,unsigned long,long) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 int populate_vma_page_range (struct vm_area_struct*,unsigned long,unsigned long,int *) ;
 int prot_none_walk_ops ;
 scalar_t__ security_vm_enough_memory_mm (struct mm_struct*,unsigned long) ;
 int split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 int vm_get_page_prot (unsigned long) ;
 int vm_stat_account (struct mm_struct*,unsigned long,long) ;
 int vm_unacct_memory (unsigned long) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ,int ,scalar_t__,int ,int ) ;
 int vma_policy (struct vm_area_struct*) ;
 int vma_set_page_prot (struct vm_area_struct*) ;
 int vma_wants_writenotify (struct vm_area_struct*,int ) ;
 int walk_page_range (int ,unsigned long,unsigned long,int *,int *) ;

int
mprotect_fixup(struct vm_area_struct *vma, struct vm_area_struct **pprev,
 unsigned long start, unsigned long end, unsigned long newflags)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long oldflags = vma->vm_flags;
 long nrpages = (end - start) >> PAGE_SHIFT;
 unsigned long charged = 0;
 pgoff_t pgoff;
 int error;
 int dirty_accountable = 0;

 if (newflags == oldflags) {
  *pprev = vma;
  return 0;
 }






 if (arch_has_pfn_modify_check() &&
     (vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
     (newflags & (VM_READ|VM_WRITE|VM_EXEC)) == 0) {
  pgprot_t new_pgprot = vm_get_page_prot(newflags);

  error = walk_page_range(current->mm, start, end,
    &prot_none_walk_ops, &new_pgprot);
  if (error)
   return error;
 }







 if (newflags & VM_WRITE) {

  if (!may_expand_vm(mm, newflags, nrpages) &&
    may_expand_vm(mm, oldflags, nrpages))
   return -ENOMEM;
  if (!(oldflags & (VM_ACCOUNT|VM_WRITE|VM_HUGETLB|
      VM_SHARED|VM_NORESERVE))) {
   charged = nrpages;
   if (security_vm_enough_memory_mm(mm, charged))
    return -ENOMEM;
   newflags |= VM_ACCOUNT;
  }
 }




 pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
 *pprev = vma_merge(mm, *pprev, start, end, newflags,
      vma->anon_vma, vma->vm_file, pgoff, vma_policy(vma),
      vma->vm_userfaultfd_ctx);
 if (*pprev) {
  vma = *pprev;
  VM_WARN_ON((vma->vm_flags ^ newflags) & ~VM_SOFTDIRTY);
  goto success;
 }

 *pprev = vma;

 if (start != vma->vm_start) {
  error = split_vma(mm, vma, start, 1);
  if (error)
   goto fail;
 }

 if (end != vma->vm_end) {
  error = split_vma(mm, vma, end, 0);
  if (error)
   goto fail;
 }

success:




 vma->vm_flags = newflags;
 dirty_accountable = vma_wants_writenotify(vma, vma->vm_page_prot);
 vma_set_page_prot(vma);

 change_protection(vma, start, end, vma->vm_page_prot,
     dirty_accountable, 0);





 if ((oldflags & (VM_WRITE | VM_SHARED | VM_LOCKED)) == VM_LOCKED &&
   (newflags & VM_WRITE)) {
  populate_vma_page_range(vma, start, end, ((void*)0));
 }

 vm_stat_account(mm, oldflags, -nrpages);
 vm_stat_account(mm, newflags, nrpages);
 perf_event_mmap(vma);
 return 0;

fail:
 vm_unacct_memory(charged);
 return error;
}
