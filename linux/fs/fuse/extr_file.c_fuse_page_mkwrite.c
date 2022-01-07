
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; } ;
struct TYPE_2__ {int vm_file; } ;


 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 struct inode* file_inode (int ) ;
 int file_update_time (int ) ;
 int fuse_wait_on_page_writeback (struct inode*,int ) ;
 int lock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static vm_fault_t fuse_page_mkwrite(struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct inode *inode = file_inode(vmf->vma->vm_file);

 file_update_time(vmf->vma->vm_file);
 lock_page(page);
 if (page->mapping != inode->i_mapping) {
  unlock_page(page);
  return VM_FAULT_NOPAGE;
 }

 fuse_wait_on_page_writeback(inode, page->index);
 return VM_FAULT_LOCKED;
}
