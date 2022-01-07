
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;


 int get_bh (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;

__attribute__((used)) static inline struct buffer_head *
nilfs_page_get_nth_block(struct page *page, unsigned int count)
{
 struct buffer_head *bh = page_buffers(page);

 while (count-- > 0)
  bh = bh->b_this_page;
 get_bh(bh);
 return bh;
}
