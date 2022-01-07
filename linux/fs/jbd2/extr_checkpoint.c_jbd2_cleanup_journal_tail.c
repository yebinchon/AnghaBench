
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_6__ {int j_flags; int j_fs_dev; } ;
typedef TYPE_1__ journal_t ;


 int EIO ;
 int GFP_NOFS ;
 int JBD2_BARRIER ;
 int J_ASSERT (int) ;
 int __jbd2_update_log_tail (TYPE_1__*,int ,unsigned long) ;
 int blkdev_issue_flush (int ,int ,int *) ;
 scalar_t__ is_journal_aborted (TYPE_1__*) ;
 int jbd2_journal_get_log_tail (TYPE_1__*,int *,unsigned long*) ;

int jbd2_cleanup_journal_tail(journal_t *journal)
{
 tid_t first_tid;
 unsigned long blocknr;

 if (is_journal_aborted(journal))
  return -EIO;

 if (!jbd2_journal_get_log_tail(journal, &first_tid, &blocknr))
  return 1;
 J_ASSERT(blocknr != 0);
 if (journal->j_flags & JBD2_BARRIER)
  blkdev_issue_flush(journal->j_fs_dev, GFP_NOFS, ((void*)0));

 return __jbd2_update_log_tail(journal, first_tid, blocknr);
}
