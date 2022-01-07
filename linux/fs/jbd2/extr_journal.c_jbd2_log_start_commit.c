
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_4__ {int j_state_lock; } ;
typedef TYPE_1__ journal_t ;


 int __jbd2_log_start_commit (TYPE_1__*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int jbd2_log_start_commit(journal_t *journal, tid_t tid)
{
 int ret;

 write_lock(&journal->j_state_lock);
 ret = __jbd2_log_start_commit(journal, tid);
 write_unlock(&journal->j_state_lock);
 return ret;
}
