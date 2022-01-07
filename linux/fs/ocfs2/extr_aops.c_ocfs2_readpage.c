
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_alloc_sem; scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int AOP_TRUNCATED_PAGE ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int block_read_full_page (struct page*,int ) ;
 int down_read (int *) ;
 scalar_t__ down_read_trylock (int *) ;
 scalar_t__ i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_get_block ;
 int ocfs2_inode_lock_with_page (struct inode*,int *,int ,struct page*) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_readpage_inline (struct inode*,struct page*) ;
 int trace_ocfs2_readpage (unsigned long long,scalar_t__) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int zero_user (struct page*,int ,int ) ;

__attribute__((used)) static int ocfs2_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 loff_t start = (loff_t)page->index << PAGE_SHIFT;
 int ret, unlock = 1;

 trace_ocfs2_readpage((unsigned long long)oi->ip_blkno,
        (page ? page->index : 0));

 ret = ocfs2_inode_lock_with_page(inode, ((void*)0), 0, page);
 if (ret != 0) {
  if (ret == AOP_TRUNCATED_PAGE)
   unlock = 0;
  mlog_errno(ret);
  goto out;
 }

 if (down_read_trylock(&oi->ip_alloc_sem) == 0) {




  ret = AOP_TRUNCATED_PAGE;
  unlock_page(page);
  unlock = 0;
  down_read(&oi->ip_alloc_sem);
  up_read(&oi->ip_alloc_sem);
  goto out_inode_unlock;
 }
 if (start >= i_size_read(inode)) {
  zero_user(page, 0, PAGE_SIZE);
  SetPageUptodate(page);
  ret = 0;
  goto out_alloc;
 }

 if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  ret = ocfs2_readpage_inline(inode, page);
 else
  ret = block_read_full_page(page, ocfs2_get_block);
 unlock = 0;

out_alloc:
 up_read(&oi->ip_alloc_sem);
out_inode_unlock:
 ocfs2_inode_unlock(inode, 0);
out:
 if (unlock)
  unlock_page(page);
 return ret;
}
