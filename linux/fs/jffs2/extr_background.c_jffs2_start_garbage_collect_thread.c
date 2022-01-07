
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pid; } ;
struct jffs2_sb_info {int gc_thread_start; int gc_thread_exit; TYPE_1__* mtd; int gc_task; } ;
struct TYPE_2__ {int index; } ;


 int BUG_ON (int ) ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int complete (int *) ;
 int init_completion (int *) ;
 int jffs2_dbg (int,char*,int) ;
 int jffs2_garbage_collect_thread ;
 struct task_struct* kthread_run (int ,struct jffs2_sb_info*,char*,int ) ;
 int pr_warn (char*,int) ;
 int wait_for_completion (int *) ;

int jffs2_start_garbage_collect_thread(struct jffs2_sb_info *c)
{
 struct task_struct *tsk;
 int ret = 0;

 BUG_ON(c->gc_task);

 init_completion(&c->gc_thread_start);
 init_completion(&c->gc_thread_exit);

 tsk = kthread_run(jffs2_garbage_collect_thread, c, "jffs2_gcd_mtd%d", c->mtd->index);
 if (IS_ERR(tsk)) {
  pr_warn("fork failed for JFFS2 garbage collect thread: %ld\n",
   -PTR_ERR(tsk));
  complete(&c->gc_thread_exit);
  ret = PTR_ERR(tsk);
 } else {

  jffs2_dbg(1, "Garbage collect thread is pid %d\n", tsk->pid);
  wait_for_completion(&c->gc_thread_start);
  ret = tsk->pid;
 }

 return ret;
}
