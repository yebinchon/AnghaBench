
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;


 int BIO_MAX_PAGES ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int META_POR ;
 int PageUptodate (struct page*) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_ra_meta_pages (struct f2fs_sb_info*,int ,int ,int ,int) ;
 struct page* find_get_page (int ,int ) ;

void f2fs_ra_meta_pages_cond(struct f2fs_sb_info *sbi, pgoff_t index)
{
 struct page *page;
 bool readahead = 0;

 page = find_get_page(META_MAPPING(sbi), index);
 if (!page || !PageUptodate(page))
  readahead = 1;
 f2fs_put_page(page, 0);

 if (readahead)
  f2fs_ra_meta_pages(sbi, index, BIO_MAX_PAGES, META_POR, 1);
}
