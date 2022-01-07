
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int META ;
 struct address_space* META_MAPPING (struct f2fs_sb_info*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int cond_resched () ;
 struct page* f2fs_grab_cache_page (struct address_space*,int ,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;

struct page *f2fs_grab_meta_page(struct f2fs_sb_info *sbi, pgoff_t index)
{
 struct address_space *mapping = META_MAPPING(sbi);
 struct page *page = ((void*)0);
repeat:
 page = f2fs_grab_cache_page(mapping, index, 0);
 if (!page) {
  cond_resched();
  goto repeat;
 }
 f2fs_wait_on_page_writeback(page, META, 1, 1);
 if (!PageUptodate(page))
  SetPageUptodate(page);
 return page;
}
