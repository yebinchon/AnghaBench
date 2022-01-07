
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_state_lock; int j_flags; scalar_t__ j_errno; } ;
typedef TYPE_1__ journal_t ;


 int JBD2_ACK_ERR ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void jbd2_journal_ack_err(journal_t *journal)
{
 write_lock(&journal->j_state_lock);
 if (journal->j_errno)
  journal->j_flags |= JBD2_ACK_ERR;
 write_unlock(&journal->j_state_lock);
}
