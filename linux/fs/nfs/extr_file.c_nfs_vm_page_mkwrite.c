
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {int dummy; } ;
struct inode {int i_sb; struct address_space* i_mapping; } ;
struct file {TYPE_3__* f_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {TYPE_2__* host; } ;
struct TYPE_7__ {int i_ino; } ;
struct TYPE_6__ {struct file* vm_file; } ;


 TYPE_4__* NFS_I (struct inode*) ;
 int NFS_INO_INVALIDATING ;
 int PAGECACHE ;
 int TASK_KILLABLE ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int dfprintk (int ,char*,struct file*,int ,long long) ;
 struct inode* file_inode (struct file*) ;
 int lock_page (struct page*) ;
 scalar_t__ nfs_flush_incompatible (struct file*,struct page*) ;
 int nfs_fscache_wait_on_page_write (TYPE_4__*,struct page*) ;
 unsigned int nfs_page_length (struct page*) ;
 scalar_t__ nfs_updatepage (struct file*,struct page*,int ,unsigned int) ;
 int nfs_wait_bit_killable ;
 struct address_space* page_file_mapping (struct page*) ;
 scalar_t__ page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int unlock_page (struct page*) ;
 int wait_on_bit_action (int *,int ,int ,int ) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static vm_fault_t nfs_vm_page_mkwrite(struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct file *filp = vmf->vma->vm_file;
 struct inode *inode = file_inode(filp);
 unsigned pagelen;
 vm_fault_t ret = VM_FAULT_NOPAGE;
 struct address_space *mapping;

 dfprintk(PAGECACHE, "NFS: vm_page_mkwrite(%pD2(%lu), offset %lld)\n",
  filp, filp->f_mapping->host->i_ino,
  (long long)page_offset(page));

 sb_start_pagefault(inode->i_sb);


 nfs_fscache_wait_on_page_write(NFS_I(inode), page);

 wait_on_bit_action(&NFS_I(inode)->flags, NFS_INO_INVALIDATING,
   nfs_wait_bit_killable, TASK_KILLABLE);

 lock_page(page);
 mapping = page_file_mapping(page);
 if (mapping != inode->i_mapping)
  goto out_unlock;

 wait_on_page_writeback(page);

 pagelen = nfs_page_length(page);
 if (pagelen == 0)
  goto out_unlock;

 ret = VM_FAULT_LOCKED;
 if (nfs_flush_incompatible(filp, page) == 0 &&
     nfs_updatepage(filp, page, 0, pagelen) == 0)
  goto out;

 ret = VM_FAULT_SIGBUS;
out_unlock:
 unlock_page(page);
out:
 sb_end_pagefault(inode->i_sb);
 return ret;
}
