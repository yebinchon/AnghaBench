
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_handle_lock; int t_updates; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_6__ {int j_barrier; int j_state_lock; int j_wait_updates; TYPE_1__* j_running_transaction; int j_reserved_credits; int j_wait_reserved; int j_barrier_count; } ;
typedef TYPE_2__ journal_t ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int jbd2_might_wait_for_commit (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;
 int wait_event (int ,int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void jbd2_journal_lock_updates(journal_t *journal)
{
 DEFINE_WAIT(wait);

 jbd2_might_wait_for_commit(journal);

 write_lock(&journal->j_state_lock);
 ++journal->j_barrier_count;


 if (atomic_read(&journal->j_reserved_credits)) {
  write_unlock(&journal->j_state_lock);
  wait_event(journal->j_wait_reserved,
      atomic_read(&journal->j_reserved_credits) == 0);
  write_lock(&journal->j_state_lock);
 }


 while (1) {
  transaction_t *transaction = journal->j_running_transaction;

  if (!transaction)
   break;

  spin_lock(&transaction->t_handle_lock);
  prepare_to_wait(&journal->j_wait_updates, &wait,
    TASK_UNINTERRUPTIBLE);
  if (!atomic_read(&transaction->t_updates)) {
   spin_unlock(&transaction->t_handle_lock);
   finish_wait(&journal->j_wait_updates, &wait);
   break;
  }
  spin_unlock(&transaction->t_handle_lock);
  write_unlock(&journal->j_state_lock);
  schedule();
  finish_wait(&journal->j_wait_updates, &wait);
  write_lock(&journal->j_state_lock);
 }
 write_unlock(&journal->j_state_lock);







 mutex_lock(&journal->j_barrier);
}
