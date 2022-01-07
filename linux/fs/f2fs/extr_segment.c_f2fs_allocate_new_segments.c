
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; } ;
struct TYPE_4__ {int sentry_lock; TYPE_1__* s_ops; } ;
struct TYPE_3__ {int (* allocate_segment ) (struct f2fs_sb_info*,int,int) ;} ;


 int CURSEG_COLD_DATA ;
 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 TYPE_2__* SIT_I (struct f2fs_sb_info*) ;
 int down_write (int *) ;
 int locate_dirty_segment (struct f2fs_sb_info*,unsigned int) ;
 int stub1 (struct f2fs_sb_info*,int,int) ;
 int up_write (int *) ;

void f2fs_allocate_new_segments(struct f2fs_sb_info *sbi)
{
 struct curseg_info *curseg;
 unsigned int old_segno;
 int i;

 down_write(&SIT_I(sbi)->sentry_lock);

 for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
  curseg = CURSEG_I(sbi, i);
  old_segno = curseg->segno;
  SIT_I(sbi)->s_ops->allocate_segment(sbi, i, 1);
  locate_dirty_segment(sbi, old_segno);
 }

 up_write(&SIT_I(sbi)->sentry_lock);
}
