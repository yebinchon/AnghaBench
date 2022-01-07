
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;


 int DEFAULT_RETRY_IO_COUNT ;
 int EIO ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct page* __get_meta_page (struct f2fs_sb_info*,int ,int) ;
 int f2fs_stop_checkpoint (struct f2fs_sb_info*,int) ;

struct page *f2fs_get_meta_page_nofail(struct f2fs_sb_info *sbi, pgoff_t index)
{
 struct page *page;
 int count = 0;

retry:
 page = __get_meta_page(sbi, index, 1);
 if (IS_ERR(page)) {
  if (PTR_ERR(page) == -EIO &&
    ++count <= DEFAULT_RETRY_IO_COUNT)
   goto retry;
  f2fs_stop_checkpoint(sbi, 0);
 }
 return page;
}
