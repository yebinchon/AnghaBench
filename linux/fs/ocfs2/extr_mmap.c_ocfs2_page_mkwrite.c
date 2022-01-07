
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sigset_t ;
struct TYPE_4__ {int ip_alloc_sem; } ;
struct TYPE_3__ {int vm_file; } ;


 TYPE_2__* OCFS2_I (struct inode*) ;
 int __ocfs2_page_mkwrite (int ,struct buffer_head*,struct page*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 struct inode* file_inode (int ) ;
 int mlog_errno (int) ;
 int ocfs2_block_signals (int *) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_unblock_signals (int *) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int up_write (int *) ;
 int vmf_error (int) ;

__attribute__((used)) static vm_fault_t ocfs2_page_mkwrite(struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct inode *inode = file_inode(vmf->vma->vm_file);
 struct buffer_head *di_bh = ((void*)0);
 sigset_t oldset;
 int err;
 vm_fault_t ret;

 sb_start_pagefault(inode->i_sb);
 ocfs2_block_signals(&oldset);






 err = ocfs2_inode_lock(inode, &di_bh, 1);
 if (err < 0) {
  mlog_errno(err);
  ret = vmf_error(err);
  goto out;
 }






 down_write(&OCFS2_I(inode)->ip_alloc_sem);

 ret = __ocfs2_page_mkwrite(vmf->vma->vm_file, di_bh, page);

 up_write(&OCFS2_I(inode)->ip_alloc_sem);

 brelse(di_bh);
 ocfs2_inode_unlock(inode, 1);

out:
 ocfs2_unblock_signals(&oldset);
 sb_end_pagefault(inode->i_sb);
 return ret;
}
