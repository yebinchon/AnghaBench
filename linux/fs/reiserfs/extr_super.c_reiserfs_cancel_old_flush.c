
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_sb_info {int work_queued; int old_work; int old_work_lock; } ;


 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int cancel_delayed_work_sync (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void reiserfs_cancel_old_flush(struct super_block *s)
{
 struct reiserfs_sb_info *sbi = REISERFS_SB(s);

 spin_lock(&sbi->old_work_lock);

 sbi->work_queued = 2;
 spin_unlock(&sbi->old_work_lock);
 cancel_delayed_work_sync(&REISERFS_SB(s)->old_work);
}
