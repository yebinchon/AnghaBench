
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ t_state; int t_tid; int t_updates; int * t_checkpoint_io_list; int * t_checkpoint_list; int * t_shadow_list; int * t_forget; int * t_buffers; struct TYPE_9__* t_cpnext; TYPE_1__* t_cpprev; } ;
typedef TYPE_2__ transaction_t ;
struct TYPE_10__ {TYPE_2__* j_running_transaction; TYPE_2__* j_committing_transaction; TYPE_2__* j_checkpoint_transactions; int j_list_lock; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_8__ {TYPE_2__* t_cpnext; } ;


 int J_ASSERT (int) ;
 scalar_t__ T_FINISHED ;
 int assert_spin_locked (int *) ;
 scalar_t__ atomic_read (int *) ;
 int jbd_debug (int,char*,int ) ;
 int trace_jbd2_drop_transaction (TYPE_3__*,TYPE_2__*) ;

void __jbd2_journal_drop_transaction(journal_t *journal, transaction_t *transaction)
{
 assert_spin_locked(&journal->j_list_lock);
 if (transaction->t_cpnext) {
  transaction->t_cpnext->t_cpprev = transaction->t_cpprev;
  transaction->t_cpprev->t_cpnext = transaction->t_cpnext;
  if (journal->j_checkpoint_transactions == transaction)
   journal->j_checkpoint_transactions =
    transaction->t_cpnext;
  if (journal->j_checkpoint_transactions == transaction)
   journal->j_checkpoint_transactions = ((void*)0);
 }

 J_ASSERT(transaction->t_state == T_FINISHED);
 J_ASSERT(transaction->t_buffers == ((void*)0));
 J_ASSERT(transaction->t_forget == ((void*)0));
 J_ASSERT(transaction->t_shadow_list == ((void*)0));
 J_ASSERT(transaction->t_checkpoint_list == ((void*)0));
 J_ASSERT(transaction->t_checkpoint_io_list == ((void*)0));
 J_ASSERT(atomic_read(&transaction->t_updates) == 0);
 J_ASSERT(journal->j_committing_transaction != transaction);
 J_ASSERT(journal->j_running_transaction != transaction);

 trace_jbd2_drop_transaction(journal, transaction);

 jbd_debug(1, "Dropping transaction %d, all done\n", transaction->t_tid);
}
