
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_sb; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;


 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_std_error (int ,int) ;
 int ext4_write_inline_data (struct inode*,struct ext4_iloc*,void*,int ,unsigned int) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;

struct buffer_head *
ext4_journalled_write_inline_data(struct inode *inode,
      unsigned len,
      struct page *page)
{
 int ret, no_expand;
 void *kaddr;
 struct ext4_iloc iloc;

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret) {
  ext4_std_error(inode->i_sb, ret);
  return ((void*)0);
 }

 ext4_write_lock_xattr(inode, &no_expand);
 kaddr = kmap_atomic(page);
 ext4_write_inline_data(inode, &iloc, kaddr, 0, len);
 kunmap_atomic(kaddr);
 ext4_write_unlock_xattr(inode, &no_expand);

 return iloc.bh;
}
