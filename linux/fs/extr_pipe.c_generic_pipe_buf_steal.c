
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int dummy; } ;


 int lock_page (struct page*) ;
 int page_count (struct page*) ;

int generic_pipe_buf_steal(struct pipe_inode_info *pipe,
      struct pipe_buffer *buf)
{
 struct page *page = buf->page;






 if (page_count(page) == 1) {
  lock_page(page);
  return 0;
 }

 return 1;
}
