
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_mode; TYPE_1__* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; int s_blocksize_bits; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 scalar_t__ S_ISREG (int ) ;
 int WARN_ON_ONCE (int ) ;
 int __GFP_FS ;
 int bh_offset (struct buffer_head*) ;
 scalar_t__ buffer_freed (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int create_empty_buffers (struct page*,unsigned int,int ) ;
 int ext4_get_block (struct inode*,int,struct buffer_head*,int ) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_jbd2_inode_add_write (int *,struct inode*,int,int) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_order_data (struct inode*) ;
 struct page* find_or_create_page (struct address_space*,int,int ) ;
 int fscrypt_decrypt_pagecache_blocks (struct page*,unsigned int,int ) ;
 int fscrypt_has_encryption_key (struct inode*) ;
 int ll_rw_block (int ,int ,int,struct buffer_head**) ;
 int mapping_gfp_constraint (struct address_space*,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int put_page (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int zero_user (struct page*,unsigned int,int) ;

__attribute__((used)) static int __ext4_block_zero_page_range(handle_t *handle,
  struct address_space *mapping, loff_t from, loff_t length)
{
 ext4_fsblk_t index = from >> PAGE_SHIFT;
 unsigned offset = from & (PAGE_SIZE-1);
 unsigned blocksize, pos;
 ext4_lblk_t iblock;
 struct inode *inode = mapping->host;
 struct buffer_head *bh;
 struct page *page;
 int err = 0;

 page = find_or_create_page(mapping, from >> PAGE_SHIFT,
       mapping_gfp_constraint(mapping, ~__GFP_FS));
 if (!page)
  return -ENOMEM;

 blocksize = inode->i_sb->s_blocksize;

 iblock = index << (PAGE_SHIFT - inode->i_sb->s_blocksize_bits);

 if (!page_has_buffers(page))
  create_empty_buffers(page, blocksize, 0);


 bh = page_buffers(page);
 pos = blocksize;
 while (offset >= pos) {
  bh = bh->b_this_page;
  iblock++;
  pos += blocksize;
 }
 if (buffer_freed(bh)) {
  BUFFER_TRACE(bh, "freed: skip");
  goto unlock;
 }
 if (!buffer_mapped(bh)) {
  BUFFER_TRACE(bh, "unmapped");
  ext4_get_block(inode, iblock, bh, 0);

  if (!buffer_mapped(bh)) {
   BUFFER_TRACE(bh, "still unmapped");
   goto unlock;
  }
 }


 if (PageUptodate(page))
  set_buffer_uptodate(bh);

 if (!buffer_uptodate(bh)) {
  err = -EIO;
  ll_rw_block(REQ_OP_READ, 0, 1, &bh);
  wait_on_buffer(bh);

  if (!buffer_uptodate(bh))
   goto unlock;
  if (S_ISREG(inode->i_mode) && IS_ENCRYPTED(inode)) {

   BUG_ON(!fscrypt_has_encryption_key(inode));
   WARN_ON_ONCE(fscrypt_decrypt_pagecache_blocks(
     page, blocksize, bh_offset(bh)));
  }
 }
 if (ext4_should_journal_data(inode)) {
  BUFFER_TRACE(bh, "get write access");
  err = ext4_journal_get_write_access(handle, bh);
  if (err)
   goto unlock;
 }
 zero_user(page, offset, length);
 BUFFER_TRACE(bh, "zeroed end of block");

 if (ext4_should_journal_data(inode)) {
  err = ext4_handle_dirty_metadata(handle, inode, bh);
 } else {
  err = 0;
  mark_buffer_dirty(bh);
  if (ext4_should_order_data(inode))
   err = ext4_jbd2_inode_add_write(handle, inode, from,
     length);
 }

unlock:
 unlock_page(page);
 put_page(page);
 return err;
}
