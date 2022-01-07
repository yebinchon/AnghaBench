
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int PAGE_SHIFT ;
 int create_empty_buffers (struct page*,int,unsigned long) ;
 struct buffer_head* nilfs_page_get_nth_block (struct page*,unsigned long) ;
 int page_has_buffers (struct page*) ;
 int touch_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
__nilfs_get_page_block(struct page *page, unsigned long block, pgoff_t index,
         int blkbits, unsigned long b_state)

{
 unsigned long first_block;
 struct buffer_head *bh;

 if (!page_has_buffers(page))
  create_empty_buffers(page, 1 << blkbits, b_state);

 first_block = (unsigned long)index << (PAGE_SHIFT - blkbits);
 bh = nilfs_page_get_nth_block(page, block - first_block);

 touch_buffer(bh);
 wait_on_buffer(bh);
 return bh;
}
