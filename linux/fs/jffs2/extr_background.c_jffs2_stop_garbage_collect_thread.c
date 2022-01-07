
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_sb_info {int gc_thread_exit; int erase_completion_lock; TYPE_1__* gc_task; } ;
struct TYPE_2__ {int pid; } ;


 int SIGKILL ;
 int jffs2_dbg (int,char*,int ) ;
 int send_sig (int ,TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;

void jffs2_stop_garbage_collect_thread(struct jffs2_sb_info *c)
{
 int wait = 0;
 spin_lock(&c->erase_completion_lock);
 if (c->gc_task) {
  jffs2_dbg(1, "Killing GC task %d\n", c->gc_task->pid);
  send_sig(SIGKILL, c->gc_task, 1);
  wait = 1;
 }
 spin_unlock(&c->erase_completion_lock);
 if (wait)
  wait_for_completion(&c->gc_thread_exit);
}
