
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned int flags; TYPE_4__* vma; struct page* page; } ;
struct page {int mapping; } ;
struct TYPE_8__ {TYPE_3__* vm_ops; TYPE_2__* vm_file; } ;
struct TYPE_7__ {int (* page_mkwrite ) (struct vm_fault*) ;} ;
struct TYPE_6__ {TYPE_1__* f_mapping; } ;
struct TYPE_5__ {int host; } ;


 int FAULT_FLAG_MKWRITE ;
 int FAULT_FLAG_WRITE ;
 scalar_t__ IS_SWAPFILE (int ) ;
 int PageLocked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int lock_page (struct page*) ;
 int stub1 (struct vm_fault*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static vm_fault_t do_page_mkwrite(struct vm_fault *vmf)
{
 vm_fault_t ret;
 struct page *page = vmf->page;
 unsigned int old_flags = vmf->flags;

 vmf->flags = FAULT_FLAG_WRITE|FAULT_FLAG_MKWRITE;

 if (vmf->vma->vm_file &&
     IS_SWAPFILE(vmf->vma->vm_file->f_mapping->host))
  return VM_FAULT_SIGBUS;

 ret = vmf->vma->vm_ops->page_mkwrite(vmf);

 vmf->flags = old_flags;
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE)))
  return ret;
 if (unlikely(!(ret & VM_FAULT_LOCKED))) {
  lock_page(page);
  if (!page->mapping) {
   unlock_page(page);
   return 0;
  }
  ret |= VM_FAULT_LOCKED;
 } else
  VM_BUG_ON_PAGE(!PageLocked(page), page);
 return ret;
}
