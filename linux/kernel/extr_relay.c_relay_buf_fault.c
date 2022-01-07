
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int pgoff; struct page* page; TYPE_1__* vma; } ;
struct rchan_buf {scalar_t__ start; } ;
struct page {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_2__ {struct rchan_buf* vm_private_data; } ;


 int PAGE_SHIFT ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* vmalloc_to_page (scalar_t__) ;

__attribute__((used)) static vm_fault_t relay_buf_fault(struct vm_fault *vmf)
{
 struct page *page;
 struct rchan_buf *buf = vmf->vma->vm_private_data;
 pgoff_t pgoff = vmf->pgoff;

 if (!buf)
  return VM_FAULT_OOM;

 page = vmalloc_to_page(buf->start + (pgoff << PAGE_SHIFT));
 if (!page)
  return VM_FAULT_SIGBUS;
 get_page(page);
 vmf->page = page;

 return 0;
}
