
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int bitmap_size; int sit_bitmap; int sit_bitmap_mir; } ;
struct f2fs_sb_info {int dummy; } ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static inline void get_sit_bitmap(struct f2fs_sb_info *sbi,
  void *dst_addr)
{
 struct sit_info *sit_i = SIT_I(sbi);






 memcpy(dst_addr, sit_i->sit_bitmap, sit_i->bitmap_size);
}
