
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;


 struct page* __get_meta_page (struct f2fs_sb_info*,int ,int) ;

struct page *f2fs_get_tmp_page(struct f2fs_sb_info *sbi, pgoff_t index)
{
 return __get_meta_page(sbi, index, 0);
}
