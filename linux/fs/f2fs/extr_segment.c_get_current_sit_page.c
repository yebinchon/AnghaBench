
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 int current_sit_addr (struct f2fs_sb_info*,unsigned int) ;
 struct page* f2fs_get_meta_page_nofail (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static struct page *get_current_sit_page(struct f2fs_sb_info *sbi,
     unsigned int segno)
{
 return f2fs_get_meta_page_nofail(sbi, current_sit_addr(sbi, segno));
}
