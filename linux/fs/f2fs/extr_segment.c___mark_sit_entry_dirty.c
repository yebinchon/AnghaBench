
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int dirty_sentries; int dirty_sentries_bitmap; } ;
struct f2fs_sb_info {int dummy; } ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int __test_and_set_bit (unsigned int,int ) ;

__attribute__((used)) static bool __mark_sit_entry_dirty(struct f2fs_sb_info *sbi, unsigned int segno)
{
 struct sit_info *sit_i = SIT_I(sbi);

 if (!__test_and_set_bit(segno, sit_i->dirty_sentries_bitmap)) {
  sit_i->dirty_sentries++;
  return 0;
 }

 return 1;
}
