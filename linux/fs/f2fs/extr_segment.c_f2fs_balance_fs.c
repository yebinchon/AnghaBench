
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int gc_mutex; } ;


 int FAULT_CHECKPOINT ;
 int NULL_SEGNO ;
 scalar_t__ excess_cached_nats (struct f2fs_sb_info*) ;
 int f2fs_balance_fs_bg (struct f2fs_sb_info*) ;
 int f2fs_gc (struct f2fs_sb_info*,int,int,int ) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_show_injection_info (int ) ;
 int f2fs_stop_checkpoint (struct f2fs_sb_info*,int) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 int mutex_lock (int *) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;

void f2fs_balance_fs(struct f2fs_sb_info *sbi, bool need)
{
 if (time_to_inject(sbi, FAULT_CHECKPOINT)) {
  f2fs_show_injection_info(FAULT_CHECKPOINT);
  f2fs_stop_checkpoint(sbi, 0);
 }


 if (need && excess_cached_nats(sbi))
  f2fs_balance_fs_bg(sbi);

 if (!f2fs_is_checkpoint_ready(sbi))
  return;





 if (has_not_enough_free_secs(sbi, 0, 0)) {
  mutex_lock(&sbi->gc_mutex);
  f2fs_gc(sbi, 0, 0, NULL_SEGNO);
 }
}
