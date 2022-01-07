
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int dummy; } ;
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int current_sit_addr (struct f2fs_sb_info*,unsigned int) ;
 struct page* f2fs_grab_meta_page (struct f2fs_sb_info*,int ) ;
 int next_sit_addr (struct f2fs_sb_info*,int ) ;
 int seg_info_to_sit_page (struct f2fs_sb_info*,struct page*,unsigned int) ;
 int set_page_dirty (struct page*) ;
 int set_to_next_sit (struct sit_info*,unsigned int) ;

__attribute__((used)) static struct page *get_next_sit_page(struct f2fs_sb_info *sbi,
     unsigned int start)
{
 struct sit_info *sit_i = SIT_I(sbi);
 struct page *page;
 pgoff_t src_off, dst_off;

 src_off = current_sit_addr(sbi, start);
 dst_off = next_sit_addr(sbi, src_off);

 page = f2fs_grab_meta_page(sbi, dst_off);
 seg_info_to_sit_page(sbi, page, start);

 set_page_dirty(page);
 set_to_next_sit(sit_i, start);

 return page;
}
