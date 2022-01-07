
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long t_log_start; int t_tid; } ;
typedef TYPE_1__ transaction_t ;
typedef int tid_t ;
struct TYPE_5__ {unsigned long j_head; int j_state_lock; int j_list_lock; int j_tail_sequence; int j_transaction_sequence; TYPE_1__* j_running_transaction; TYPE_1__* j_committing_transaction; TYPE_1__* j_checkpoint_transactions; } ;
typedef TYPE_2__ journal_t ;


 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tid_gt (int ,int ) ;

int jbd2_journal_get_log_tail(journal_t *journal, tid_t *tid,
         unsigned long *block)
{
 transaction_t *transaction;
 int ret;

 read_lock(&journal->j_state_lock);
 spin_lock(&journal->j_list_lock);
 transaction = journal->j_checkpoint_transactions;
 if (transaction) {
  *tid = transaction->t_tid;
  *block = transaction->t_log_start;
 } else if ((transaction = journal->j_committing_transaction) != ((void*)0)) {
  *tid = transaction->t_tid;
  *block = transaction->t_log_start;
 } else if ((transaction = journal->j_running_transaction) != ((void*)0)) {
  *tid = transaction->t_tid;
  *block = journal->j_head;
 } else {
  *tid = journal->j_transaction_sequence;
  *block = journal->j_head;
 }
 ret = tid_gt(*tid, journal->j_tail_sequence);
 spin_unlock(&journal->j_list_lock);
 read_unlock(&journal->j_state_lock);

 return ret;
}
