
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_tid; scalar_t__ t_state; int t_need_data_flush; } ;
typedef TYPE_1__ transaction_t ;
typedef scalar_t__ tid_t ;
struct TYPE_5__ {int j_flags; scalar_t__ j_fs_dev; scalar_t__ j_dev; int j_state_lock; TYPE_1__* j_committing_transaction; int j_commit_sequence; } ;
typedef TYPE_2__ journal_t ;


 int JBD2_BARRIER ;
 scalar_t__ T_COMMIT_DFLUSH ;
 scalar_t__ T_COMMIT_JFLUSH ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ tid_geq (int ,scalar_t__) ;

int jbd2_trans_will_send_data_barrier(journal_t *journal, tid_t tid)
{
 int ret = 0;
 transaction_t *commit_trans;

 if (!(journal->j_flags & JBD2_BARRIER))
  return 0;
 read_lock(&journal->j_state_lock);

 if (tid_geq(journal->j_commit_sequence, tid))
  goto out;
 commit_trans = journal->j_committing_transaction;
 if (!commit_trans || commit_trans->t_tid != tid) {
  ret = 1;
  goto out;
 }




 if (journal->j_fs_dev != journal->j_dev) {
  if (!commit_trans->t_need_data_flush ||
      commit_trans->t_state >= T_COMMIT_DFLUSH)
   goto out;
 } else {
  if (commit_trans->t_state >= T_COMMIT_JFLUSH)
   goto out;
 }
 ret = 1;
out:
 read_unlock(&journal->j_state_lock);
 return ret;
}
