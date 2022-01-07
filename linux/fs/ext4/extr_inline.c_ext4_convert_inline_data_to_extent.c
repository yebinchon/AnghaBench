
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_sb; scalar_t__ i_nlink; } ;
struct ext4_iloc {int bh; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;


 unsigned int AOP_FLAG_NOFS ;
 int ENOMEM ;
 int ENOSPC ;
 int EXT4_HT_WRITE_PAGE ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int PageUptodate (struct page*) ;
 int __block_write_begin (struct page*,unsigned int,unsigned int,int ) ;
 int block_commit_write (struct page*,unsigned int,unsigned int) ;
 int brelse (int ) ;
 int do_journal_get_write_access ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_destroy_inline_data_nolock (int *,struct inode*) ;
 int ext4_get_block ;
 int ext4_get_block_unwritten ;
 unsigned int ext4_get_inline_size (struct inode*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_has_inline_data (struct inode*) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_read_inline_page (struct inode*,struct page*) ;
 scalar_t__ ext4_should_dioread_nolock (struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_walk_page_buffers (int *,int ,unsigned int,unsigned int,int *,int ) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int ,unsigned int) ;
 int page_buffers (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_convert_inline_data_to_extent(struct address_space *mapping,
           struct inode *inode,
           unsigned flags)
{
 int ret, needed_blocks, no_expand;
 handle_t *handle = ((void*)0);
 int retries = 0, sem_held = 0;
 struct page *page = ((void*)0);
 unsigned from, to;
 struct ext4_iloc iloc;

 if (!ext4_has_inline_data(inode)) {




  ext4_clear_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
  return 0;
 }

 needed_blocks = ext4_writepage_trans_blocks(inode);

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret)
  return ret;

retry:
 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  handle = ((void*)0);
  goto out;
 }



 flags |= AOP_FLAG_NOFS;

 page = grab_cache_page_write_begin(mapping, 0, flags);
 if (!page) {
  ret = -ENOMEM;
  goto out;
 }

 ext4_write_lock_xattr(inode, &no_expand);
 sem_held = 1;

 if (!ext4_has_inline_data(inode)) {
  ret = 0;
  goto out;
 }

 from = 0;
 to = ext4_get_inline_size(inode);
 if (!PageUptodate(page)) {
  ret = ext4_read_inline_page(inode, page);
  if (ret < 0)
   goto out;
 }

 ret = ext4_destroy_inline_data_nolock(handle, inode);
 if (ret)
  goto out;

 if (ext4_should_dioread_nolock(inode)) {
  ret = __block_write_begin(page, from, to,
       ext4_get_block_unwritten);
 } else
  ret = __block_write_begin(page, from, to, ext4_get_block);

 if (!ret && ext4_should_journal_data(inode)) {
  ret = ext4_walk_page_buffers(handle, page_buffers(page),
          from, to, ((void*)0),
          do_journal_get_write_access);
 }

 if (ret) {
  unlock_page(page);
  put_page(page);
  page = ((void*)0);
  ext4_orphan_add(handle, inode);
  ext4_write_unlock_xattr(inode, &no_expand);
  sem_held = 0;
  ext4_journal_stop(handle);
  handle = ((void*)0);
  ext4_truncate_failed_write(inode);






  if (inode->i_nlink)
   ext4_orphan_del(((void*)0), inode);
 }

 if (ret == -ENOSPC && ext4_should_retry_alloc(inode->i_sb, &retries))
  goto retry;

 if (page)
  block_commit_write(page, from, to);
out:
 if (page) {
  unlock_page(page);
  put_page(page);
 }
 if (sem_held)
  ext4_write_unlock_xattr(inode, &no_expand);
 if (handle)
  ext4_journal_stop(handle);
 brelse(iloc.bh);
 return ret;
}
