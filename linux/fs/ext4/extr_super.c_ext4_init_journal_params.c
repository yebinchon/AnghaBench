
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_sb_info {int s_max_batch_time; int s_min_batch_time; int s_commit_interval; } ;
struct TYPE_3__ {int j_state_lock; int j_flags; int j_max_batch_time; int j_min_batch_time; int j_commit_interval; } ;
typedef TYPE_1__ journal_t ;


 int BARRIER ;
 int DATA_ERR_ABORT ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int JBD2_ABORT_ON_SYNCDATA_ERR ;
 int JBD2_BARRIER ;
 scalar_t__ test_opt (struct super_block*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void ext4_init_journal_params(struct super_block *sb, journal_t *journal)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);

 journal->j_commit_interval = sbi->s_commit_interval;
 journal->j_min_batch_time = sbi->s_min_batch_time;
 journal->j_max_batch_time = sbi->s_max_batch_time;

 write_lock(&journal->j_state_lock);
 if (test_opt(sb, BARRIER))
  journal->j_flags |= JBD2_BARRIER;
 else
  journal->j_flags &= ~JBD2_BARRIER;
 if (test_opt(sb, DATA_ERR_ABORT))
  journal->j_flags |= JBD2_ABORT_ON_SYNCDATA_ERR;
 else
  journal->j_flags &= ~JBD2_ABORT_ON_SYNCDATA_ERR;
 write_unlock(&journal->j_state_lock);
}
