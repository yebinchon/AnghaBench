
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct ocfs2_dinode {int i_ctime_nsec; int i_mtime_nsec; void* i_ctime; void* i_mtime; void* i_size; } ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct inode {int i_blkbits; int i_sb; TYPE_1__ i_mtime; TYPE_1__ i_ctime; int i_blocks; struct address_space* i_mapping; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int __block_write_begin (struct page*,unsigned int,int ,int ) ;
 int block_commit_write (struct page*,unsigned int,unsigned int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int) ;
 TYPE_1__ current_time (struct inode*) ;
 struct page* find_or_create_page (struct address_space*,unsigned long,int ) ;
 unsigned int i_blocksize (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_get_block ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;
 int * ocfs2_zero_start_ordered_transaction (struct inode*,struct buffer_head*,int,int) ;
 int put_page (struct page*) ;
 int trace_ocfs2_write_zero_page (unsigned long long,unsigned long long,unsigned long long,unsigned long,unsigned int,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ocfs2_write_zero_page(struct inode *inode, u64 abs_from,
     u64 abs_to, struct buffer_head *di_bh)
{
 struct address_space *mapping = inode->i_mapping;
 struct page *page;
 unsigned long index = abs_from >> PAGE_SHIFT;
 handle_t *handle;
 int ret = 0;
 unsigned zero_from, zero_to, block_start, block_end;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

 BUG_ON(abs_from >= abs_to);
 BUG_ON(abs_to > (((u64)index + 1) << PAGE_SHIFT));
 BUG_ON(abs_from & (inode->i_blkbits - 1));

 handle = ocfs2_zero_start_ordered_transaction(inode, di_bh,
            abs_from,
            abs_to - abs_from);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out;
 }

 page = find_or_create_page(mapping, index, GFP_NOFS);
 if (!page) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out_commit_trans;
 }


 zero_from = abs_from & (PAGE_SIZE - 1);
 zero_to = abs_to & (PAGE_SIZE - 1);
 if (!zero_to)
  zero_to = PAGE_SIZE;

 trace_ocfs2_write_zero_page(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   (unsigned long long)abs_from,
   (unsigned long long)abs_to,
   index, zero_from, zero_to);


 for (block_start = zero_from; block_start < zero_to;
      block_start = block_end) {
  block_end = block_start + i_blocksize(inode);






  ret = __block_write_begin(page, block_start + 1, 0,
       ocfs2_get_block);
  if (ret < 0) {
   mlog_errno(ret);
   goto out_unlock;
  }



  ret = block_commit_write(page, block_start + 1,
      block_start + 1);
  if (ret < 0)
   mlog_errno(ret);
  else
   ret = 0;
 }






 i_size_write(inode, abs_to);
 inode->i_blocks = ocfs2_inode_sector_count(inode);
 di->i_size = cpu_to_le64((u64)i_size_read(inode));
 inode->i_mtime = inode->i_ctime = current_time(inode);
 di->i_mtime = di->i_ctime = cpu_to_le64(inode->i_mtime.tv_sec);
 di->i_ctime_nsec = cpu_to_le32(inode->i_mtime.tv_nsec);
 di->i_mtime_nsec = di->i_ctime_nsec;
 if (handle) {
  ocfs2_journal_dirty(handle, di_bh);
  ocfs2_update_inode_fsync_trans(handle, inode, 1);
 }

out_unlock:
 unlock_page(page);
 put_page(page);
out_commit_trans:
 if (handle)
  ocfs2_commit_trans(OCFS2_SB(inode->i_sb), handle);
out:
 return ret;
}
