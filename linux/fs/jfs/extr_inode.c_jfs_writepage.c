
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int jfs_get_block ;

__attribute__((used)) static int jfs_writepage(struct page *page, struct writeback_control *wbc)
{
 return block_write_full_page(page, jfs_get_block, wbc);
}
