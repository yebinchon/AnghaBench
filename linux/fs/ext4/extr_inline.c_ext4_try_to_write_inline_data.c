
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_iloc {int bh; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int xattr_sem; } ;


 unsigned int AOP_FLAG_NOFS ;
 int ENOMEM ;
 int ENOSPC ;
 int EXT4_HT_INODE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int PageUptodate (struct page*) ;
 int brelse (int ) ;
 int down_read (int *) ;
 int ext4_convert_inline_data_to_extent (struct address_space*,struct inode*,unsigned int) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 unsigned int ext4_get_max_inline_size (struct inode*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_prepare_inline_data (int *,struct inode*,unsigned int) ;
 int ext4_read_inline_page (struct inode*,struct page*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int ,unsigned int) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;

int ext4_try_to_write_inline_data(struct address_space *mapping,
      struct inode *inode,
      loff_t pos, unsigned len,
      unsigned flags,
      struct page **pagep)
{
 int ret;
 handle_t *handle;
 struct page *page;
 struct ext4_iloc iloc;

 if (pos + len > ext4_get_max_inline_size(inode))
  goto convert;

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret)
  return ret;





 handle = ext4_journal_start(inode, EXT4_HT_INODE, 1);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  handle = ((void*)0);
  goto out;
 }

 ret = ext4_prepare_inline_data(handle, inode, pos + len);
 if (ret && ret != -ENOSPC)
  goto out;


 if (ret == -ENOSPC) {
  ext4_journal_stop(handle);
  brelse(iloc.bh);
  goto convert;
 }

 ret = ext4_journal_get_write_access(handle, iloc.bh);
 if (ret)
  goto out;

 flags |= AOP_FLAG_NOFS;

 page = grab_cache_page_write_begin(mapping, 0, flags);
 if (!page) {
  ret = -ENOMEM;
  goto out;
 }

 *pagep = page;
 down_read(&EXT4_I(inode)->xattr_sem);
 if (!ext4_has_inline_data(inode)) {
  ret = 0;
  unlock_page(page);
  put_page(page);
  goto out_up_read;
 }

 if (!PageUptodate(page)) {
  ret = ext4_read_inline_page(inode, page);
  if (ret < 0) {
   unlock_page(page);
   put_page(page);
   goto out_up_read;
  }
 }

 ret = 1;
 handle = ((void*)0);
out_up_read:
 up_read(&EXT4_I(inode)->xattr_sem);
out:
 if (handle && (ret != 1))
  ext4_journal_stop(handle);
 brelse(iloc.bh);
 return ret;
convert:
 return ext4_convert_inline_data_to_extent(mapping,
        inode, flags);
}
