
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int __block_commit_write (struct inode*,struct page*,unsigned int,unsigned int) ;
 int flush_dcache_page (struct page*) ;
 int page_zero_new_buffers (struct page*,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

int block_write_end(struct file *file, struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 unsigned start;

 start = pos & (PAGE_SIZE - 1);

 if (unlikely(copied < len)) {
  if (!PageUptodate(page))
   copied = 0;

  page_zero_new_buffers(page, start+copied, start+len);
 }
 flush_dcache_page(page);


 __block_commit_write(inode, page, start, start+copied);

 return copied;
}
