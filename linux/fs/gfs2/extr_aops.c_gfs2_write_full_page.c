
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {scalar_t__ const index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
typedef int get_block_t ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __block_write_full_page (struct inode* const,struct page*,int *,struct writeback_control*,int ) ;
 int end_buffer_async_write ;
 int i_size_read (struct inode* const) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

__attribute__((used)) static int gfs2_write_full_page(struct page *page, get_block_t *get_block,
    struct writeback_control *wbc)
{
 struct inode * const inode = page->mapping->host;
 loff_t i_size = i_size_read(inode);
 const pgoff_t end_index = i_size >> PAGE_SHIFT;
 unsigned offset;
 offset = i_size & (PAGE_SIZE-1);
 if (page->index == end_index && offset)
  zero_user_segment(page, offset, PAGE_SIZE);

 return __block_write_full_page(inode, page, get_block, wbc,
           end_buffer_async_write);
}
