
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {scalar_t__ cmt_state; int cmt_wq; } ;
struct TYPE_2__ {int pid; } ;


 scalar_t__ COMMIT_RUNNING_BACKGROUND ;
 scalar_t__ COMMIT_RUNNING_REQUIRED ;
 TYPE_1__* current ;
 int dbg_cmt (char*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int wait_for_commit(struct ubifs_info *c)
{
 dbg_cmt("pid %d goes sleep", current->pid);
 wait_event(c->cmt_wq, c->cmt_state != COMMIT_RUNNING_BACKGROUND &&
         c->cmt_state != COMMIT_RUNNING_REQUIRED);
 dbg_cmt("commit finished, pid %d woke up", current->pid);
 return 0;
}
