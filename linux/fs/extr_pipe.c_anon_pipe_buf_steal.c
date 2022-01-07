
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {struct page* page; } ;
struct page {int dummy; } ;


 int __SetPageLocked (struct page*) ;
 int memcg_kmem_uncharge (struct page*,int ) ;
 int page_count (struct page*) ;

__attribute__((used)) static int anon_pipe_buf_steal(struct pipe_inode_info *pipe,
          struct pipe_buffer *buf)
{
 struct page *page = buf->page;

 if (page_count(page) == 1) {
  memcg_kmem_uncharge(page, 0);
  __SetPageLocked(page);
  return 0;
 }
 return 1;
}
