
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {scalar_t__ i_size; } ;
typedef scalar_t__ loff_t ;


 int ext4_write_inline_data_end (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

int ext4_da_write_inline_data_end(struct inode *inode, loff_t pos,
      unsigned len, unsigned copied,
      struct page *page)
{
 int ret;

 ret = ext4_write_inline_data_end(inode, pos, len, copied, page);
 if (ret < 0) {
  unlock_page(page);
  put_page(page);
  return ret;
 }
 copied = ret;
 if (pos+copied > inode->i_size)
  i_size_write(inode, pos+copied);
 unlock_page(page);
 put_page(page);







 mark_inode_dirty(inode);

 return copied;
}
