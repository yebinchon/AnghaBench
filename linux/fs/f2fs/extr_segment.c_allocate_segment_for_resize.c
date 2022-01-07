
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; int curseg_mutex; } ;
struct TYPE_4__ {int sentry_lock; } ;
struct TYPE_3__ {int curseg_lock; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 TYPE_2__* SIT_I (struct f2fs_sb_info*) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int change_curseg (struct f2fs_sb_info*,int) ;
 int down_read (int *) ;
 int down_write (int *) ;
 scalar_t__ f2fs_need_SSR (struct f2fs_sb_info*) ;
 int f2fs_notice (struct f2fs_sb_info*,char*,int,unsigned int,unsigned int) ;
 scalar_t__ get_ssr_segment (struct f2fs_sb_info*,int) ;
 int locate_dirty_segment (struct f2fs_sb_info*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int new_curseg (struct f2fs_sb_info*,int,int) ;
 int stat_inc_seg_type (struct f2fs_sb_info*,struct curseg_info*) ;
 int up_read (int *) ;
 int up_write (int *) ;

void allocate_segment_for_resize(struct f2fs_sb_info *sbi, int type,
     unsigned int start, unsigned int end)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 unsigned int segno;

 down_read(&SM_I(sbi)->curseg_lock);
 mutex_lock(&curseg->curseg_mutex);
 down_write(&SIT_I(sbi)->sentry_lock);

 segno = CURSEG_I(sbi, type)->segno;
 if (segno < start || segno > end)
  goto unlock;

 if (f2fs_need_SSR(sbi) && get_ssr_segment(sbi, type))
  change_curseg(sbi, type);
 else
  new_curseg(sbi, type, 1);

 stat_inc_seg_type(sbi, curseg);

 locate_dirty_segment(sbi, segno);
unlock:
 up_write(&SIT_I(sbi)->sentry_lock);

 if (segno != curseg->segno)
  f2fs_notice(sbi, "For resize: curseg of type %d: %u ==> %u",
       type, segno, curseg->segno);

 mutex_unlock(&curseg->curseg_mutex);
 up_read(&SM_I(sbi)->curseg_lock);
}
