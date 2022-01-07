
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int sentry_lock; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ block_t ;


 unsigned int GET_SEGNO (struct f2fs_sb_info*,scalar_t__) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ NEW_ADDR ;
 scalar_t__ NULL_ADDR ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int down_write (int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int invalidate_mapping_pages (int ,scalar_t__,scalar_t__) ;
 int locate_dirty_segment (struct f2fs_sb_info*,unsigned int) ;
 int up_write (int *) ;
 int update_sit_entry (struct f2fs_sb_info*,scalar_t__,int) ;

void f2fs_invalidate_blocks(struct f2fs_sb_info *sbi, block_t addr)
{
 unsigned int segno = GET_SEGNO(sbi, addr);
 struct sit_info *sit_i = SIT_I(sbi);

 f2fs_bug_on(sbi, addr == NULL_ADDR);
 if (addr == NEW_ADDR)
  return;

 invalidate_mapping_pages(META_MAPPING(sbi), addr, addr);


 down_write(&sit_i->sentry_lock);

 update_sit_entry(sbi, addr, -1);


 locate_dirty_segment(sbi, segno);

 up_write(&sit_i->sentry_lock);
}
