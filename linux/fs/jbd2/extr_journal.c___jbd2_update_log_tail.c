
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {unsigned long j_tail; unsigned long j_free; int j_state_lock; int j_tail_sequence; scalar_t__ j_first; scalar_t__ j_last; int j_checkpoint_mutex; } ;
typedef TYPE_1__ journal_t ;


 int BUG_ON (int) ;
 int REQ_FUA ;
 int REQ_SYNC ;
 int jbd2_journal_update_sb_log_tail (TYPE_1__*,int ,unsigned long,int) ;
 int jbd_debug (int,char*,int ,int ,unsigned long,unsigned long) ;
 int mutex_is_locked (int *) ;
 int trace_jbd2_update_log_tail (TYPE_1__*,int ,unsigned long,unsigned long) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int __jbd2_update_log_tail(journal_t *journal, tid_t tid, unsigned long block)
{
 unsigned long freed;
 int ret;

 BUG_ON(!mutex_is_locked(&journal->j_checkpoint_mutex));







 ret = jbd2_journal_update_sb_log_tail(journal, tid, block,
           REQ_SYNC | REQ_FUA);
 if (ret)
  goto out;

 write_lock(&journal->j_state_lock);
 freed = block - journal->j_tail;
 if (block < journal->j_tail)
  freed += journal->j_last - journal->j_first;

 trace_jbd2_update_log_tail(journal, tid, block, freed);
 jbd_debug(1,
    "Cleaning journal tail from %u to %u (offset %lu), "
    "freeing %lu\n",
    journal->j_tail_sequence, tid, block, freed);

 journal->j_free += freed;
 journal->j_tail_sequence = tid;
 journal->j_tail = block;
 write_unlock(&journal->j_state_lock);

out:
 return ret;
}
