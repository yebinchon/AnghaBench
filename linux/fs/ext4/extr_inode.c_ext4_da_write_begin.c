
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {unsigned int i_size; int i_sb; int i_mode; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int pgoff_t ;
typedef unsigned int loff_t ;
typedef int handle_t ;


 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 int EXT4_HT_WRITE_PAGE ;
 int EXT4_SB (int ) ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 scalar_t__ FALL_BACK_TO_NONDELALLOC ;
 scalar_t__ IS_ERR (int *) ;
 unsigned int PAGE_SHIFT ;
 int PTR_ERR (int *) ;
 scalar_t__ S_ISLNK (int ) ;
 int __block_write_begin (struct page*,unsigned int,unsigned int,int ) ;
 int ext4_block_write_begin (struct page*,unsigned int,unsigned int,int ) ;
 int ext4_da_get_block_prep ;
 int ext4_da_write_credits (struct inode*,unsigned int,unsigned int) ;
 int ext4_da_write_inline_data_begin (struct address_space*,struct inode*,unsigned int,unsigned int,unsigned int,struct page**,void**) ;
 int ext4_forced_shutdown (int ) ;
 int * ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (int *) ;
 scalar_t__ ext4_nonda_switch (int ) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_truncate_failed_write (struct inode*) ;
 scalar_t__ ext4_verity_in_progress (struct inode*) ;
 int ext4_write_begin (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**) ;
 struct page* grab_cache_page_write_begin (struct address_space*,unsigned int,unsigned int) ;
 int lock_page (struct page*) ;
 int put_page (struct page*) ;
 int trace_ext4_da_write_begin (struct inode*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 int wait_for_stable_page (struct page*) ;

__attribute__((used)) static int ext4_da_write_begin(struct file *file, struct address_space *mapping,
          loff_t pos, unsigned len, unsigned flags,
          struct page **pagep, void **fsdata)
{
 int ret, retries = 0;
 struct page *page;
 pgoff_t index;
 struct inode *inode = mapping->host;
 handle_t *handle;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 index = pos >> PAGE_SHIFT;

 if (ext4_nonda_switch(inode->i_sb) || S_ISLNK(inode->i_mode) ||
     ext4_verity_in_progress(inode)) {
  *fsdata = (void *)FALL_BACK_TO_NONDELALLOC;
  return ext4_write_begin(file, mapping, pos,
     len, flags, pagep, fsdata);
 }
 *fsdata = (void *)0;
 trace_ext4_da_write_begin(inode, pos, len, flags);

 if (ext4_test_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA)) {
  ret = ext4_da_write_inline_data_begin(mapping, inode,
            pos, len, flags,
            pagep, fsdata);
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
 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE,
    ext4_da_write_credits(inode, pos, len));
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





 ret = __block_write_begin(page, pos, len, ext4_da_get_block_prep);

 if (ret < 0) {
  unlock_page(page);
  ext4_journal_stop(handle);





  if (pos + len > inode->i_size)
   ext4_truncate_failed_write(inode);

  if (ret == -ENOSPC &&
      ext4_should_retry_alloc(inode->i_sb, &retries))
   goto retry_journal;

  put_page(page);
  return ret;
 }

 *pagep = page;
 return ret;
}
