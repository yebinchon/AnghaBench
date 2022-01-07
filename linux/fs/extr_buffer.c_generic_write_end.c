
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;


 unsigned int block_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mark_inode_dirty (struct inode*) ;
 int pagecache_isize_extended (struct inode*,unsigned int,unsigned int) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

int generic_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 loff_t old_size = inode->i_size;
 bool i_size_changed = 0;

 copied = block_write_end(file, mapping, pos, len, copied, page, fsdata);
 if (pos + copied > inode->i_size) {
  i_size_write(inode, pos + copied);
  i_size_changed = 1;
 }

 unlock_page(page);
 put_page(page);

 if (old_size < pos)
  pagecache_isize_extended(inode, old_size, pos);






 if (i_size_changed)
  mark_inode_dirty(inode);
 return copied;
}
