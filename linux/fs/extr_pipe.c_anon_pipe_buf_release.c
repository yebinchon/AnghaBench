
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {struct page* tmp_page; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int dummy; } ;


 int page_count (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static void anon_pipe_buf_release(struct pipe_inode_info *pipe,
      struct pipe_buffer *buf)
{
 struct page *page = buf->page;






 if (page_count(page) == 1 && !pipe->tmp_page)
  pipe->tmp_page = page;
 else
  put_page(page);
}
