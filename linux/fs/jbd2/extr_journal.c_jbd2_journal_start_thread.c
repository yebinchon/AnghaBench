
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {int * j_task; int j_wait_done_commit; int j_devname; } ;
typedef TYPE_1__ journal_t ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int kjournald2 ;
 struct task_struct* kthread_run (int ,TYPE_1__*,char*,int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int jbd2_journal_start_thread(journal_t *journal)
{
 struct task_struct *t;

 t = kthread_run(kjournald2, journal, "jbd2/%s",
   journal->j_devname);
 if (IS_ERR(t))
  return PTR_ERR(t);

 wait_event(journal->j_wait_done_commit, journal->j_task != ((void*)0));
 return 0;
}
