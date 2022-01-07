
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_checkpoint_io_list; int t_checkpoint_list; struct TYPE_4__* t_cpnext; struct TYPE_4__* t_cpprev; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_5__ {TYPE_1__* j_checkpoint_transactions; } ;
typedef TYPE_2__ journal_t ;


 int journal_clean_one_cp_list (int ,int) ;
 scalar_t__ need_resched () ;

void __jbd2_journal_clean_checkpoint_list(journal_t *journal, bool destroy)
{
 transaction_t *transaction, *last_transaction, *next_transaction;
 int ret;

 transaction = journal->j_checkpoint_transactions;
 if (!transaction)
  return;

 last_transaction = transaction->t_cpprev;
 next_transaction = transaction;
 do {
  transaction = next_transaction;
  next_transaction = transaction->t_cpnext;
  ret = journal_clean_one_cp_list(transaction->t_checkpoint_list,
      destroy);





  if (need_resched())
   return;
  if (ret)
   continue;





  ret = journal_clean_one_cp_list(transaction->
    t_checkpoint_io_list, destroy);
  if (need_resched())
   return;





  if (!ret)
   return;
 } while (transaction != last_transaction);
}
