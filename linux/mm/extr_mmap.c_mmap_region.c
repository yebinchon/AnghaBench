
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_flags_t ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; unsigned long vm_pgoff; struct file* vm_file; int vm_page_prot; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long locked_vm; } ;
struct list_head {int dummy; } ;
struct file {int f_mapping; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long ENOMEM ;
 int NULL_VM_UFFD_CTX ;
 unsigned long PAGE_SHIFT ;
 int VM_ACCOUNT ;
 int VM_DENYWRITE ;
 int VM_LOCKED ;
 int VM_LOCKED_CLEAR_MASK ;
 int VM_SHARED ;
 int VM_SOFTDIRTY ;
 int VM_SPECIAL ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ accountable_mapping (struct file*,int) ;
 int allow_write_access (struct file*) ;
 int call_mmap (struct file*,struct vm_area_struct*) ;
 unsigned long count_vma_pages_range (struct mm_struct*,unsigned long,unsigned long) ;
 TYPE_1__* current ;
 int deny_write_access (struct file*) ;
 scalar_t__ do_munmap (struct mm_struct*,unsigned long,unsigned long,struct list_head*) ;
 scalar_t__ find_vma_links (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ;
 int fput (struct file*) ;
 struct file* get_file (struct file*) ;
 struct vm_area_struct* get_gate_vma (struct mm_struct*) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int mapping_map_writable (int ) ;
 int mapping_unmap_writable (int ) ;
 int may_expand_vm (struct mm_struct*,int,unsigned long) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 scalar_t__ security_vm_enough_memory_mm (struct mm_struct*,unsigned long) ;
 int shmem_zero_setup (struct vm_area_struct*) ;
 int unmap_region (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ;
 int uprobe_mmap (struct vm_area_struct*) ;
 struct vm_area_struct* vm_area_alloc (struct mm_struct*) ;
 int vm_area_free (struct vm_area_struct*) ;
 int vm_get_page_prot (int) ;
 int vm_stat_account (struct mm_struct*,int,unsigned long) ;
 int vm_unacct_memory (unsigned long) ;
 scalar_t__ vma_is_dax (struct vm_area_struct*) ;
 int vma_link (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ;
 struct vm_area_struct* vma_merge (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int,int *,struct file*,unsigned long,int *,int ) ;
 int vma_set_anonymous (struct vm_area_struct*) ;
 int vma_set_page_prot (struct vm_area_struct*) ;

unsigned long mmap_region(struct file *file, unsigned long addr,
  unsigned long len, vm_flags_t vm_flags, unsigned long pgoff,
  struct list_head *uf)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma, *prev;
 int error;
 struct rb_node **rb_link, *rb_parent;
 unsigned long charged = 0;


 if (!may_expand_vm(mm, vm_flags, len >> PAGE_SHIFT)) {
  unsigned long nr_pages;





  nr_pages = count_vma_pages_range(mm, addr, addr + len);

  if (!may_expand_vm(mm, vm_flags,
     (len >> PAGE_SHIFT) - nr_pages))
   return -ENOMEM;
 }


 while (find_vma_links(mm, addr, addr + len, &prev, &rb_link,
         &rb_parent)) {
  if (do_munmap(mm, addr, len, uf))
   return -ENOMEM;
 }




 if (accountable_mapping(file, vm_flags)) {
  charged = len >> PAGE_SHIFT;
  if (security_vm_enough_memory_mm(mm, charged))
   return -ENOMEM;
  vm_flags |= VM_ACCOUNT;
 }




 vma = vma_merge(mm, prev, addr, addr + len, vm_flags,
   ((void*)0), file, pgoff, ((void*)0), NULL_VM_UFFD_CTX);
 if (vma)
  goto out;






 vma = vm_area_alloc(mm);
 if (!vma) {
  error = -ENOMEM;
  goto unacct_error;
 }

 vma->vm_start = addr;
 vma->vm_end = addr + len;
 vma->vm_flags = vm_flags;
 vma->vm_page_prot = vm_get_page_prot(vm_flags);
 vma->vm_pgoff = pgoff;

 if (file) {
  if (vm_flags & VM_DENYWRITE) {
   error = deny_write_access(file);
   if (error)
    goto free_vma;
  }
  if (vm_flags & VM_SHARED) {
   error = mapping_map_writable(file->f_mapping);
   if (error)
    goto allow_write_and_free_vma;
  }






  vma->vm_file = get_file(file);
  error = call_mmap(file, vma);
  if (error)
   goto unmap_and_free_vma;
  WARN_ON_ONCE(addr != vma->vm_start);

  addr = vma->vm_start;
  vm_flags = vma->vm_flags;
 } else if (vm_flags & VM_SHARED) {
  error = shmem_zero_setup(vma);
  if (error)
   goto free_vma;
 } else {
  vma_set_anonymous(vma);
 }

 vma_link(mm, vma, prev, rb_link, rb_parent);

 if (file) {
  if (vm_flags & VM_SHARED)
   mapping_unmap_writable(file->f_mapping);
  if (vm_flags & VM_DENYWRITE)
   allow_write_access(file);
 }
 file = vma->vm_file;
out:
 perf_event_mmap(vma);

 vm_stat_account(mm, vm_flags, len >> PAGE_SHIFT);
 if (vm_flags & VM_LOCKED) {
  if ((vm_flags & VM_SPECIAL) || vma_is_dax(vma) ||
     is_vm_hugetlb_page(vma) ||
     vma == get_gate_vma(current->mm))
   vma->vm_flags &= VM_LOCKED_CLEAR_MASK;
  else
   mm->locked_vm += (len >> PAGE_SHIFT);
 }

 if (file)
  uprobe_mmap(vma);
 vma->vm_flags |= VM_SOFTDIRTY;

 vma_set_page_prot(vma);

 return addr;

unmap_and_free_vma:
 vma->vm_file = ((void*)0);
 fput(file);


 unmap_region(mm, vma, prev, vma->vm_start, vma->vm_end);
 charged = 0;
 if (vm_flags & VM_SHARED)
  mapping_unmap_writable(file->f_mapping);
allow_write_and_free_vma:
 if (vm_flags & VM_DENYWRITE)
  allow_write_access(file);
free_vma:
 vm_area_free(vma);
unacct_error:
 if (charged)
  vm_unacct_memory(charged);
 return error;
}
