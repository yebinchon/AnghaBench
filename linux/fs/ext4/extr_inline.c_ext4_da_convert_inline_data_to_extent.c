
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 scalar_t__ CONVERT_INLINE_DATA ;
 int ENOMEM ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 int PageUptodate (struct page*) ;
 int SetPageDirty (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int __block_write_begin (struct page*,int ,int,int ) ;
 int down_read (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_da_get_block_prep ;
 int ext4_get_inline_size (struct inode*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_read_inline_page (struct inode*,struct page*) ;
 int ext4_truncate_failed_write (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int ,unsigned int) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int ext4_da_convert_inline_data_to_extent(struct address_space *mapping,
       struct inode *inode,
       unsigned flags,
       void **fsdata)
{
 int ret = 0, inline_size;
 struct page *page;

 page = grab_cache_page_write_begin(mapping, 0, flags);
 if (!page)
  return -ENOMEM;

 down_read(&EXT4_I(inode)->xattr_sem);
 if (!ext4_has_inline_data(inode)) {
  ext4_clear_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
  goto out;
 }

 inline_size = ext4_get_inline_size(inode);

 if (!PageUptodate(page)) {
  ret = ext4_read_inline_page(inode, page);
  if (ret < 0)
   goto out;
 }

 ret = __block_write_begin(page, 0, inline_size,
      ext4_da_get_block_prep);
 if (ret) {
  up_read(&EXT4_I(inode)->xattr_sem);
  unlock_page(page);
  put_page(page);
  ext4_truncate_failed_write(inode);
  return ret;
 }

 SetPageDirty(page);
 SetPageUptodate(page);
 ext4_clear_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
 *fsdata = (void *)CONVERT_INLINE_DATA;

out:
 up_read(&EXT4_I(inode)->xattr_sem);
 if (page) {
  unlock_page(page);
  put_page(page);
 }
 return ret;
}
