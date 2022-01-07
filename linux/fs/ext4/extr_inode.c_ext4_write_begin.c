
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {int i_size; int i_sb; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;


 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 int EXT4_HT_WRITE_PAGE ;
 int EXT4_SB (int ) ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 scalar_t__ IS_ERR (int *) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 int __block_write_begin (struct page*,int,unsigned int,int ) ;
 int do_journal_get_write_access ;
 int ext4_block_write_begin (struct page*,int,unsigned int,int ) ;
 scalar_t__ ext4_can_truncate (struct inode*) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_get_block ;
 int ext4_get_block_unwritten ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 scalar_t__ ext4_should_dioread_nolock (struct inode*) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_truncate_failed_write (struct inode*) ;
 int ext4_try_to_write_inline_data (struct address_space*,struct inode*,int,unsigned int,unsigned int,struct page**) ;
 int ext4_verity_in_progress (struct inode*) ;
 int ext4_walk_page_buffers (int *,int ,unsigned int,unsigned int,int *,int ) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int lock_page (struct page*) ;
 int page_buffers (struct page*) ;
 int put_page (struct page*) ;
 int trace_ext4_write_begin (struct inode*,int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;

__attribute__((used)) static int ext4_write_begin(struct file *file, struct address_space *mapping,
       loff_t pos, unsigned len, unsigned flags,
       struct page **pagep, void **fsdata)
{
 struct inode *inode = mapping->host;
 int ret, needed_blocks;
 handle_t *handle;
 int retries = 0;
 struct page *page;
 pgoff_t index;
 unsigned from, to;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 trace_ext4_write_begin(inode, pos, len, flags);




 needed_blocks = ext4_writepage_trans_blocks(inode) + 1;
 index = pos >> PAGE_SHIFT;
 from = pos & (PAGE_SIZE - 1);
 to = from + len;

 if (ext4_test_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA)) {
  ret = ext4_try_to_write_inline_data(mapping, inode, pos, len,
          flags, pagep);
  if (ret < 0)
   return ret;
  if (ret == 1)
   return 0;
 }
retry_grab:
 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;
 unlock_page(page);

retry_journal:
 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
 if (IS_ERR(handle)) {
  put_page(page);
  return PTR_ERR(handle);
 }

 lock_page(page);
 if (page->mapping != mapping) {

  unlock_page(page);
  put_page(page);
  ext4_journal_stop(handle);
  goto retry_grab;
 }

 wait_for_stable_page(page);
 if (ext4_should_dioread_nolock(inode))
  ret = __block_write_begin(page, pos, len,
       ext4_get_block_unwritten);
 else
  ret = __block_write_begin(page, pos, len, ext4_get_block);

 if (!ret && ext4_should_journal_data(inode)) {
  ret = ext4_walk_page_buffers(handle, page_buffers(page),
          from, to, ((void*)0),
          do_journal_get_write_access);
 }

 if (ret) {
  bool extended = (pos + len > inode->i_size) &&
    !ext4_verity_in_progress(inode);

  unlock_page(page);
  if (extended && ext4_can_truncate(inode))
   ext4_orphan_add(handle, inode);

  ext4_journal_stop(handle);
  if (extended) {
   ext4_truncate_failed_write(inode);






   if (inode->i_nlink)
    ext4_orphan_del(((void*)0), inode);
  }

  if (ret == -ENOSPC &&
      ext4_should_retry_alloc(inode->i_sb, &retries))
   goto retry_journal;
  put_page(page);
  return ret;
 }
 *pagep = page;
 return ret;
}
