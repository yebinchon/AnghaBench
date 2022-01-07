
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {scalar_t__ gc_task; int erase_completion_lock; } ;


 int SIGHUP ;
 int assert_spin_locked (int *) ;
 scalar_t__ jffs2_thread_should_wake (struct jffs2_sb_info*) ;
 int send_sig (int ,scalar_t__,int) ;

void jffs2_garbage_collect_trigger(struct jffs2_sb_info *c)
{
 assert_spin_locked(&c->erase_completion_lock);
 if (c->gc_task && jffs2_thread_should_wake(c))
  send_sig(SIGHUP, c->gc_task, 1);
}
