
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int j_list_lock; int j_checkpoint_transactions; } ;
typedef TYPE_1__ journal_t ;


 int __jbd2_journal_clean_checkpoint_list (TYPE_1__*,int) ;
 int cond_resched () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void jbd2_journal_destroy_checkpoint(journal_t *journal)
{




 while (1) {
  spin_lock(&journal->j_list_lock);
  if (!journal->j_checkpoint_transactions) {
   spin_unlock(&journal->j_list_lock);
   break;
  }
  __jbd2_journal_clean_checkpoint_list(journal, 1);
  spin_unlock(&journal->j_list_lock);
  cond_resched();
 }
}
