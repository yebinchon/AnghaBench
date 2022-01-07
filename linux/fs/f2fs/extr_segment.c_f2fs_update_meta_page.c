
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int PAGE_SIZE ;
 struct page* f2fs_grab_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int memcpy (int ,void*,int ) ;
 int page_address (struct page*) ;
 int set_page_dirty (struct page*) ;

void f2fs_update_meta_page(struct f2fs_sb_info *sbi,
     void *src, block_t blk_addr)
{
 struct page *page = f2fs_grab_meta_page(sbi, blk_addr);

 memcpy(page_address(page), src, PAGE_SIZE);
 set_page_dirty(page);
 f2fs_put_page(page, 1);
}
