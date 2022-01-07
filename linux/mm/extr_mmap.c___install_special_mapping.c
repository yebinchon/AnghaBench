
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_operations_struct {int dummy; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_flags; void* vm_private_data; struct vm_operations_struct const* vm_ops; int vm_page_prot; } ;
struct mm_struct {unsigned long def_flags; } ;


 int ENOMEM ;
 struct vm_area_struct* ERR_PTR (int) ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_DONTEXPAND ;
 unsigned long VM_SOFTDIRTY ;
 int insert_vm_struct (struct mm_struct*,struct vm_area_struct*) ;
 int perf_event_mmap (struct vm_area_struct*) ;
 scalar_t__ unlikely (int ) ;
 struct vm_area_struct* vm_area_alloc (struct mm_struct*) ;
 int vm_area_free (struct vm_area_struct*) ;
 int vm_get_page_prot (unsigned long) ;
 int vm_stat_account (struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static struct vm_area_struct *__install_special_mapping(
 struct mm_struct *mm,
 unsigned long addr, unsigned long len,
 unsigned long vm_flags, void *priv,
 const struct vm_operations_struct *ops)
{
 int ret;
 struct vm_area_struct *vma;

 vma = vm_area_alloc(mm);
 if (unlikely(vma == ((void*)0)))
  return ERR_PTR(-ENOMEM);

 vma->vm_start = addr;
 vma->vm_end = addr + len;

 vma->vm_flags = vm_flags | mm->def_flags | VM_DONTEXPAND | VM_SOFTDIRTY;
 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);

 vma->vm_ops = ops;
 vma->vm_private_data = priv;

 ret = insert_vm_struct(mm, vma);
 if (ret)
  goto out;

 vm_stat_account(mm, vma->vm_flags, len >> PAGE_SHIFT);

 perf_event_mmap(vma);

 return vma;

out:
 vm_area_free(vma);
 return ERR_PTR(ret);
}
