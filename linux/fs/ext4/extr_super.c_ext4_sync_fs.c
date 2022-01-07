
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct super_block {int s_bdev; } ;
struct ext4_sb_info {TYPE_1__* s_journal; int rsv_conversion_wq; } ;
struct TYPE_5__ {int j_flags; } ;


 int BARRIER ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_KERNEL ;
 int JBD2_BARRIER ;
 int blkdev_issue_flush (int ,int ,int *) ;
 int dquot_writeback_dquots (struct super_block*,int) ;
 int ext4_forced_shutdown (struct ext4_sb_info*) ;
 int flush_workqueue (int ) ;
 int jbd2_get_latest_transaction (TYPE_1__*) ;
 scalar_t__ jbd2_journal_start_commit (TYPE_1__*,int *) ;
 int jbd2_log_wait_commit (TYPE_1__*,int ) ;
 int jbd2_trans_will_send_data_barrier (TYPE_1__*,int ) ;
 scalar_t__ test_opt (struct super_block*,int ) ;
 int trace_ext4_sync_fs (struct super_block*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_sync_fs(struct super_block *sb, int wait)
{
 int ret = 0;
 tid_t target;
 bool needs_barrier = 0;
 struct ext4_sb_info *sbi = EXT4_SB(sb);

 if (unlikely(ext4_forced_shutdown(sbi)))
  return 0;

 trace_ext4_sync_fs(sb, wait);
 flush_workqueue(sbi->rsv_conversion_wq);




 dquot_writeback_dquots(sb, -1);





 if (sbi->s_journal) {
  target = jbd2_get_latest_transaction(sbi->s_journal);
  if (wait && sbi->s_journal->j_flags & JBD2_BARRIER &&
      !jbd2_trans_will_send_data_barrier(sbi->s_journal, target))
   needs_barrier = 1;

  if (jbd2_journal_start_commit(sbi->s_journal, &target)) {
   if (wait)
    ret = jbd2_log_wait_commit(sbi->s_journal,
          target);
  }
 } else if (wait && test_opt(sb, BARRIER))
  needs_barrier = 1;
 if (needs_barrier) {
  int err;
  err = blkdev_issue_flush(sb->s_bdev, GFP_KERNEL, ((void*)0));
  if (!ret)
   ret = err;
 }

 return ret;
}
