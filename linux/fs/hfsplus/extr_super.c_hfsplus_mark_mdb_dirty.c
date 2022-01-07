
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hfsplus_sb_info {int work_queued; int work_lock; int sync_work; } ;


 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 int dirty_writeback_interval ;
 unsigned long msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_long_wq ;

void hfsplus_mark_mdb_dirty(struct super_block *sb)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);
 unsigned long delay;

 if (sb_rdonly(sb))
  return;

 spin_lock(&sbi->work_lock);
 if (!sbi->work_queued) {
  delay = msecs_to_jiffies(dirty_writeback_interval * 10);
  queue_delayed_work(system_long_wq, &sbi->sync_work, delay);
  sbi->work_queued = 1;
 }
 spin_unlock(&sbi->work_lock);
}
