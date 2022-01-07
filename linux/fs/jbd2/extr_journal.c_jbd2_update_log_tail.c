
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_4__ {int j_checkpoint_mutex; int j_tail_sequence; } ;
typedef TYPE_1__ journal_t ;


 int __jbd2_update_log_tail (TYPE_1__*,int ,unsigned long) ;
 int mutex_lock_io (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tid_gt (int ,int ) ;

void jbd2_update_log_tail(journal_t *journal, tid_t tid, unsigned long block)
{
 mutex_lock_io(&journal->j_checkpoint_mutex);
 if (tid_gt(tid, journal->j_tail_sequence))
  __jbd2_update_log_tail(journal, tid, block);
 mutex_unlock(&journal->j_checkpoint_mutex);
}
