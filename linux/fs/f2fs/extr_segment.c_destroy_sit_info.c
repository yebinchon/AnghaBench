
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sit_info {struct sit_info* invalid_segmap; struct sit_info* sit_bitmap_mir; struct sit_info* sit_bitmap; struct sit_info* dirty_sentries_bitmap; struct sit_info* sec_entries; struct sit_info* sentries; struct sit_info* tmp_map; struct sit_info* bitmap; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int * sit_info; } ;


 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int kvfree (struct sit_info*) ;

__attribute__((used)) static void destroy_sit_info(struct f2fs_sb_info *sbi)
{
 struct sit_info *sit_i = SIT_I(sbi);

 if (!sit_i)
  return;

 if (sit_i->sentries)
  kvfree(sit_i->bitmap);
 kvfree(sit_i->tmp_map);

 kvfree(sit_i->sentries);
 kvfree(sit_i->sec_entries);
 kvfree(sit_i->dirty_sentries_bitmap);

 SM_I(sbi)->sit_info = ((void*)0);
 kvfree(sit_i->sit_bitmap);




 kvfree(sit_i);
}
