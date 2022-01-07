
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; int vm_page_prot; TYPE_1__* vm_mm; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int mmap_sem; } ;


 int BUG_ON (int) ;
 int EFAULT ;
 int EINVAL ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int down_read_trylock (int *) ;
 int insert_page (struct vm_area_struct*,unsigned long,struct page*,int ) ;
 int page_count (struct page*) ;

int vm_insert_page(struct vm_area_struct *vma, unsigned long addr,
   struct page *page)
{
 if (addr < vma->vm_start || addr >= vma->vm_end)
  return -EFAULT;
 if (!page_count(page))
  return -EINVAL;
 if (!(vma->vm_flags & VM_MIXEDMAP)) {
  BUG_ON(down_read_trylock(&vma->vm_mm->mmap_sem));
  BUG_ON(vma->vm_flags & VM_PFNMAP);
  vma->vm_flags |= VM_MIXEDMAP;
 }
 return insert_page(vma, addr, page, vma->vm_page_prot);
}
