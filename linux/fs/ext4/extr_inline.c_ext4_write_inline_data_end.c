
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_iloc {int bh; } ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int ClearPageDirty (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int brelse (int ) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_std_error (int ,int) ;
 int ext4_write_inline_data (struct inode*,struct ext4_iloc*,void*,int ,unsigned int) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ unlikely (int) ;

int ext4_write_inline_data_end(struct inode *inode, loff_t pos, unsigned len,
          unsigned copied, struct page *page)
{
 int ret, no_expand;
 void *kaddr;
 struct ext4_iloc iloc;

 if (unlikely(copied < len)) {
  if (!PageUptodate(page)) {
   copied = 0;
   goto out;
  }
 }

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret) {
  ext4_std_error(inode->i_sb, ret);
  copied = 0;
  goto out;
 }

 ext4_write_lock_xattr(inode, &no_expand);
 BUG_ON(!ext4_has_inline_data(inode));

 kaddr = kmap_atomic(page);
 ext4_write_inline_data(inode, &iloc, kaddr, pos, len);
 kunmap_atomic(kaddr);
 SetPageUptodate(page);

 ClearPageDirty(page);

 ext4_write_unlock_xattr(inode, &no_expand);
 brelse(iloc.bh);
 mark_inode_dirty(inode);
out:
 return copied;
}
