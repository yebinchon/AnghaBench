
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long tid_t ;
struct TYPE_6__ {int j_state_lock; int j_flags; int j_sb_buffer; int j_checkpoint_mutex; TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_7__ {void* s_sequence; void* s_start; } ;
typedef TYPE_2__ journal_superblock_t ;


 int BUG_ON (int) ;
 int EIO ;
 int JBD2_FLUSHED ;
 int WARN_ON (int) ;
 void* cpu_to_be32 (unsigned long) ;
 scalar_t__ is_journal_aborted (TYPE_1__*) ;
 int jbd2_write_superblock (TYPE_1__*,int) ;
 int jbd_debug (int,char*,unsigned long,unsigned long) ;
 int lock_buffer (int ) ;
 int mutex_is_locked (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int jbd2_journal_update_sb_log_tail(journal_t *journal, tid_t tail_tid,
         unsigned long tail_block, int write_op)
{
 journal_superblock_t *sb = journal->j_superblock;
 int ret;

 if (is_journal_aborted(journal))
  return -EIO;

 BUG_ON(!mutex_is_locked(&journal->j_checkpoint_mutex));
 jbd_debug(1, "JBD2: updating superblock (start %lu, seq %u)\n",
    tail_block, tail_tid);

 lock_buffer(journal->j_sb_buffer);
 sb->s_sequence = cpu_to_be32(tail_tid);
 sb->s_start = cpu_to_be32(tail_block);

 ret = jbd2_write_superblock(journal, write_op);
 if (ret)
  goto out;


 write_lock(&journal->j_state_lock);
 WARN_ON(!sb->s_sequence);
 journal->j_flags &= ~JBD2_FLUSHED;
 write_unlock(&journal->j_state_lock);

out:
 return ret;
}
