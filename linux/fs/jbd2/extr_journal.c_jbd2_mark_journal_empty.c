
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int j_state_lock; int j_flags; int j_tail_sequence; int j_sb_buffer; int j_checkpoint_mutex; TYPE_2__* j_superblock; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_6__ {scalar_t__ s_start; void* s_sequence; } ;
typedef TYPE_2__ journal_superblock_t ;


 int BUG_ON (int) ;
 int JBD2_FLUSHED ;
 void* cpu_to_be32 (int ) ;
 int jbd2_write_superblock (TYPE_1__*,int) ;
 int jbd_debug (int,char*,int ) ;
 int lock_buffer (int ) ;
 int mutex_is_locked (int *) ;
 int unlock_buffer (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void jbd2_mark_journal_empty(journal_t *journal, int write_op)
{
 journal_superblock_t *sb = journal->j_superblock;

 BUG_ON(!mutex_is_locked(&journal->j_checkpoint_mutex));
 lock_buffer(journal->j_sb_buffer);
 if (sb->s_start == 0) {
  unlock_buffer(journal->j_sb_buffer);
  return;
 }

 jbd_debug(1, "JBD2: Marking journal as empty (seq %u)\n",
    journal->j_tail_sequence);

 sb->s_sequence = cpu_to_be32(journal->j_tail_sequence);
 sb->s_start = cpu_to_be32(0);

 jbd2_write_superblock(journal, write_op);


 write_lock(&journal->j_state_lock);
 journal->j_flags |= JBD2_FLUSHED;
 write_unlock(&journal->j_state_lock);
}
