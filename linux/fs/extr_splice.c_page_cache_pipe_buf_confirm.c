
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int mapping; } ;


 int EIO ;
 int ENODATA ;
 int PageUptodate (struct page*) ;
 int lock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int page_cache_pipe_buf_confirm(struct pipe_inode_info *pipe,
           struct pipe_buffer *buf)
{
 struct page *page = buf->page;
 int err;

 if (!PageUptodate(page)) {
  lock_page(page);





  if (!page->mapping) {
   err = -ENODATA;
   goto error;
  }




  if (!PageUptodate(page)) {
   err = -EIO;
   goto error;
  }




  unlock_page(page);
 }

 return 0;
error:
 unlock_page(page);
 return err;
}
