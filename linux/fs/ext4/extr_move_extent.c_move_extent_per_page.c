
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned long s_blocksize; } ;
struct page {int dummy; } ;
struct inode {int i_blkbits; int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {scalar_t__ s_journal; } ;


 int EBUSY ;
 int EIO ;
 int ENOSPC ;
 int EXT4_ERROR_INODE_BLOCK (struct inode*,int ,char*) ;
 int EXT4_HT_MOVE_EXTENTS ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int block_commit_write (struct page*,int,int) ;
 int create_empty_buffers (struct page*,int,int ) ;
 int ext4_double_down_write_data_sem (struct inode*,struct inode*) ;
 int ext4_double_up_write_data_sem (struct inode*,struct inode*) ;
 int ext4_get_block (struct inode*,int,struct buffer_head*,int ) ;
 int ext4_jbd2_inode_add_write (int *,struct inode*,int,unsigned int) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 scalar_t__ ext4_should_retry_alloc (struct super_block*,int*) ;
 int ext4_swap_extents (int *,struct inode*,struct inode*,int,int,int,int,int*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ jbd2_journal_force_commit_nested (scalar_t__) ;
 int mext_check_coverage (struct inode*,int,int,int,int*) ;
 int mext_page_double_lock (struct inode*,struct inode*,int,int,struct page**) ;
 int mext_page_mkuptodate (struct page*,int,int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 int put_page (struct page*) ;
 int try_to_release_page (struct page*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
       pgoff_t orig_page_offset, pgoff_t donor_page_offset,
       int data_offset_in_page,
       int block_len_in_page, int unwritten, int *err)
{
 struct inode *orig_inode = file_inode(o_filp);
 struct page *pagep[2] = {((void*)0), ((void*)0)};
 handle_t *handle;
 ext4_lblk_t orig_blk_offset, donor_blk_offset;
 unsigned long blocksize = orig_inode->i_sb->s_blocksize;
 unsigned int tmp_data_size, data_size, replaced_size;
 int i, err2, jblocks, retries = 0;
 int replaced_count = 0;
 int from = data_offset_in_page << orig_inode->i_blkbits;
 int blocks_per_page = PAGE_SIZE >> orig_inode->i_blkbits;
 struct super_block *sb = orig_inode->i_sb;
 struct buffer_head *bh = ((void*)0);





again:
 *err = 0;
 jblocks = ext4_writepage_trans_blocks(orig_inode) * 2;
 handle = ext4_journal_start(orig_inode, EXT4_HT_MOVE_EXTENTS, jblocks);
 if (IS_ERR(handle)) {
  *err = PTR_ERR(handle);
  return 0;
 }

 orig_blk_offset = orig_page_offset * blocks_per_page +
  data_offset_in_page;

 donor_blk_offset = donor_page_offset * blocks_per_page +
  data_offset_in_page;


 if ((orig_blk_offset + block_len_in_page - 1) ==
     ((orig_inode->i_size - 1) >> orig_inode->i_blkbits)) {

  tmp_data_size = orig_inode->i_size & (blocksize - 1);




  if (tmp_data_size == 0)
   tmp_data_size = blocksize;

  data_size = tmp_data_size +
   ((block_len_in_page - 1) << orig_inode->i_blkbits);
 } else
  data_size = block_len_in_page << orig_inode->i_blkbits;

 replaced_size = data_size;

 *err = mext_page_double_lock(orig_inode, donor_inode, orig_page_offset,
         donor_page_offset, pagep);
 if (unlikely(*err < 0))
  goto stop_journal;







 if (unwritten) {
  ext4_double_down_write_data_sem(orig_inode, donor_inode);


  unwritten = mext_check_coverage(orig_inode, orig_blk_offset,
      block_len_in_page, 1, err);
  if (*err)
   goto drop_data_sem;

  unwritten &= mext_check_coverage(donor_inode, donor_blk_offset,
       block_len_in_page, 1, err);
  if (*err)
   goto drop_data_sem;

  if (!unwritten) {
   ext4_double_up_write_data_sem(orig_inode, donor_inode);
   goto data_copy;
  }
  if ((page_has_private(pagep[0]) &&
       !try_to_release_page(pagep[0], 0)) ||
      (page_has_private(pagep[1]) &&
       !try_to_release_page(pagep[1], 0))) {
   *err = -EBUSY;
   goto drop_data_sem;
  }
  replaced_count = ext4_swap_extents(handle, orig_inode,
         donor_inode, orig_blk_offset,
         donor_blk_offset,
         block_len_in_page, 1, err);
 drop_data_sem:
  ext4_double_up_write_data_sem(orig_inode, donor_inode);
  goto unlock_pages;
 }
data_copy:
 *err = mext_page_mkuptodate(pagep[0], from, from + replaced_size);
 if (*err)
  goto unlock_pages;



 if ((page_has_private(pagep[0]) && !try_to_release_page(pagep[0], 0)) ||
     (page_has_private(pagep[1]) && !try_to_release_page(pagep[1], 0))) {
  *err = -EBUSY;
  goto unlock_pages;
 }
 ext4_double_down_write_data_sem(orig_inode, donor_inode);
 replaced_count = ext4_swap_extents(handle, orig_inode, donor_inode,
            orig_blk_offset, donor_blk_offset,
        block_len_in_page, 1, err);
 ext4_double_up_write_data_sem(orig_inode, donor_inode);
 if (*err) {
  if (replaced_count) {
   block_len_in_page = replaced_count;
   replaced_size =
    block_len_in_page << orig_inode->i_blkbits;
  } else
   goto unlock_pages;
 }


 if (!page_has_buffers(pagep[0]))
  create_empty_buffers(pagep[0], 1 << orig_inode->i_blkbits, 0);
 bh = page_buffers(pagep[0]);
 for (i = 0; i < data_offset_in_page; i++)
  bh = bh->b_this_page;
 for (i = 0; i < block_len_in_page; i++) {
  *err = ext4_get_block(orig_inode, orig_blk_offset + i, bh, 0);
  if (*err < 0)
   break;
  bh = bh->b_this_page;
 }
 if (!*err)
  *err = block_commit_write(pagep[0], from, from + replaced_size);

 if (unlikely(*err < 0))
  goto repair_branches;



 *err = ext4_jbd2_inode_add_write(handle, orig_inode,
   (loff_t)orig_page_offset << PAGE_SHIFT, replaced_size);

unlock_pages:
 unlock_page(pagep[0]);
 put_page(pagep[0]);
 unlock_page(pagep[1]);
 put_page(pagep[1]);
stop_journal:
 ext4_journal_stop(handle);
 if (*err == -ENOSPC &&
     ext4_should_retry_alloc(sb, &retries))
  goto again;


 if (*err == -EBUSY && retries++ < 4 && EXT4_SB(sb)->s_journal &&
     jbd2_journal_force_commit_nested(EXT4_SB(sb)->s_journal))
  goto again;
 return replaced_count;

repair_branches:





 ext4_double_down_write_data_sem(orig_inode, donor_inode);
 replaced_count = ext4_swap_extents(handle, donor_inode, orig_inode,
            orig_blk_offset, donor_blk_offset,
        block_len_in_page, 0, &err2);
 ext4_double_up_write_data_sem(orig_inode, donor_inode);
 if (replaced_count != block_len_in_page) {
  EXT4_ERROR_INODE_BLOCK(orig_inode, (sector_t)(orig_blk_offset),
           "Unable to copy data block,"
           " data will be lost.");
  *err = -EIO;
 }
 replaced_count = 0;
 goto unlock_pages;
}
