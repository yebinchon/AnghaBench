
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 int GET_SUM_BLOCK (struct f2fs_sb_info*,unsigned int) ;
 struct page* f2fs_get_meta_page_nofail (struct f2fs_sb_info*,int ) ;

struct page *f2fs_get_sum_page(struct f2fs_sb_info *sbi, unsigned int segno)
{
 return f2fs_get_meta_page_nofail(sbi, GET_SUM_BLOCK(sbi, segno));
}
