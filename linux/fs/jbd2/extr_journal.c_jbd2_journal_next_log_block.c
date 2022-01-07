
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int j_free; unsigned long j_head; unsigned long j_last; unsigned long j_first; int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int J_ASSERT (int) ;
 int jbd2_journal_bmap (TYPE_1__*,unsigned long,unsigned long long*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int jbd2_journal_next_log_block(journal_t *journal, unsigned long long *retp)
{
 unsigned long blocknr;

 write_lock(&journal->j_state_lock);
 J_ASSERT(journal->j_free > 1);

 blocknr = journal->j_head;
 journal->j_head++;
 journal->j_free--;
 if (journal->j_head == journal->j_last)
  journal->j_head = journal->j_first;
 write_unlock(&journal->j_state_lock);
 return jbd2_journal_bmap(journal, blocknr, retp);
}
