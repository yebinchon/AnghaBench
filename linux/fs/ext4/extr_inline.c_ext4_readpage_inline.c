
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int xattr_sem; } ;


 int EAGAIN ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int down_read (int *) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_read_inline_page (struct inode*,struct page*) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int zero_user_segment (struct page*,int ,int ) ;

int ext4_readpage_inline(struct inode *inode, struct page *page)
{
 int ret = 0;

 down_read(&EXT4_I(inode)->xattr_sem);
 if (!ext4_has_inline_data(inode)) {
  up_read(&EXT4_I(inode)->xattr_sem);
  return -EAGAIN;
 }





 if (!page->index)
  ret = ext4_read_inline_page(inode, page);
 else if (!PageUptodate(page)) {
  zero_user_segment(page, 0, PAGE_SIZE);
  SetPageUptodate(page);
 }

 up_read(&EXT4_I(inode)->xattr_sem);

 unlock_page(page);
 return ret >= 0 ? 0 : ret;
}
