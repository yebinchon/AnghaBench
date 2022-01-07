
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_sb_info {int old_work_lock; scalar_t__ work_queued; } ;


 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int reiserfs_allow_writes (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int reiserfs_unfreeze(struct super_block *s)
{
 struct reiserfs_sb_info *sbi = REISERFS_SB(s);

 reiserfs_allow_writes(s);
 spin_lock(&sbi->old_work_lock);

 sbi->work_queued = 0;
 spin_unlock(&sbi->old_work_lock);
 return 0;
}
