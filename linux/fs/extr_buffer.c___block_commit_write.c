
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 int SetPageUptodate (struct page*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int __block_commit_write(struct inode *inode, struct page *page,
  unsigned from, unsigned to)
{
 unsigned block_start, block_end;
 int partial = 0;
 unsigned blocksize;
 struct buffer_head *bh, *head;

 bh = head = page_buffers(page);
 blocksize = bh->b_size;

 block_start = 0;
 do {
  block_end = block_start + blocksize;
  if (block_end <= from || block_start >= to) {
   if (!buffer_uptodate(bh))
    partial = 1;
  } else {
   set_buffer_uptodate(bh);
   mark_buffer_dirty(bh);
  }
  clear_buffer_new(bh);

  block_start = block_end;
  bh = bh->b_this_page;
 } while (bh != head);







 if (!partial)
  SetPageUptodate(page);
 return 0;
}
