
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int t_tid; } ;
typedef TYPE_1__ transaction_t ;
typedef int tid_t ;
struct TYPE_11__ {scalar_t__ j_head; scalar_t__ j_tail; scalar_t__ j_tail_sequence; scalar_t__ j_transaction_sequence; int j_state_lock; int * j_checkpoint_transactions; TYPE_1__* j_committing_transaction; TYPE_1__* j_running_transaction; int j_checkpoint_mutex; int j_list_lock; } ;
typedef TYPE_2__ journal_t ;


 int EIO ;
 int J_ASSERT (int) ;
 int REQ_FUA ;
 int REQ_SYNC ;
 int __jbd2_log_start_commit (TYPE_2__*,int ) ;
 scalar_t__ is_journal_aborted (TYPE_2__*) ;
 int jbd2_cleanup_journal_tail (TYPE_2__*) ;
 int jbd2_log_do_checkpoint (TYPE_2__*) ;
 int jbd2_log_wait_commit (TYPE_2__*,int ) ;
 int jbd2_mark_journal_empty (TYPE_2__*,int) ;
 int mutex_lock_io (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int jbd2_journal_flush(journal_t *journal)
{
 int err = 0;
 transaction_t *transaction = ((void*)0);

 write_lock(&journal->j_state_lock);


 if (journal->j_running_transaction) {
  transaction = journal->j_running_transaction;
  __jbd2_log_start_commit(journal, transaction->t_tid);
 } else if (journal->j_committing_transaction)
  transaction = journal->j_committing_transaction;


 if (transaction) {
  tid_t tid = transaction->t_tid;

  write_unlock(&journal->j_state_lock);
  jbd2_log_wait_commit(journal, tid);
 } else {
  write_unlock(&journal->j_state_lock);
 }


 spin_lock(&journal->j_list_lock);
 while (!err && journal->j_checkpoint_transactions != ((void*)0)) {
  spin_unlock(&journal->j_list_lock);
  mutex_lock_io(&journal->j_checkpoint_mutex);
  err = jbd2_log_do_checkpoint(journal);
  mutex_unlock(&journal->j_checkpoint_mutex);
  spin_lock(&journal->j_list_lock);
 }
 spin_unlock(&journal->j_list_lock);

 if (is_journal_aborted(journal))
  return -EIO;

 mutex_lock_io(&journal->j_checkpoint_mutex);
 if (!err) {
  err = jbd2_cleanup_journal_tail(journal);
  if (err < 0) {
   mutex_unlock(&journal->j_checkpoint_mutex);
   goto out;
  }
  err = 0;
 }






 jbd2_mark_journal_empty(journal, REQ_SYNC | REQ_FUA);
 mutex_unlock(&journal->j_checkpoint_mutex);
 write_lock(&journal->j_state_lock);
 J_ASSERT(!journal->j_running_transaction);
 J_ASSERT(!journal->j_committing_transaction);
 J_ASSERT(!journal->j_checkpoint_transactions);
 J_ASSERT(journal->j_head == journal->j_tail);
 J_ASSERT(journal->j_tail_sequence == journal->j_transaction_sequence);
 write_unlock(&journal->j_state_lock);
out:
 return err;
}
