
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_state_lock; int * j_task; int j_wait_done_commit; int j_wait_commit; int j_flags; } ;
typedef TYPE_1__ journal_t ;


 int JBD2_UNMOUNT ;
 int wait_event (int ,int ) ;
 int wake_up (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void journal_kill_thread(journal_t *journal)
{
 write_lock(&journal->j_state_lock);
 journal->j_flags |= JBD2_UNMOUNT;

 while (journal->j_task) {
  write_unlock(&journal->j_state_lock);
  wake_up(&journal->j_wait_commit);
  wait_event(journal->j_wait_done_commit, journal->j_task == ((void*)0));
  write_lock(&journal->j_state_lock);
 }
 write_unlock(&journal->j_state_lock);
}
