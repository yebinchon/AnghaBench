
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct reiserfs_sb_info {int work_queued; int old_work_lock; int old_work; } ;


 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int SB_ACTIVE ;
 int dirty_writeback_interval ;
 unsigned long msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_long_wq ;

void reiserfs_schedule_old_flush(struct super_block *s)
{
 struct reiserfs_sb_info *sbi = REISERFS_SB(s);
 unsigned long delay;





 if (sb_rdonly(s) || !(s->s_flags & SB_ACTIVE))
  return;

 spin_lock(&sbi->old_work_lock);
 if (!sbi->work_queued) {
  delay = msecs_to_jiffies(dirty_writeback_interval * 10);
  queue_delayed_work(system_long_wq, &sbi->old_work, delay);
  sbi->work_queued = 1;
 }
 spin_unlock(&sbi->old_work_lock);
}
