
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int alloc_sem; int erase_completion_lock; } ;


 int jffs2_dbg (int,char*) ;
 int jffs2_garbage_collect_trigger (struct jffs2_sb_info*) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void jffs2_complete_reservation(struct jffs2_sb_info *c)
{
 jffs2_dbg(1, "jffs2_complete_reservation()\n");
 spin_lock(&c->erase_completion_lock);
 jffs2_garbage_collect_trigger(c);
 spin_unlock(&c->erase_completion_lock);
 mutex_unlock(&c->alloc_sem);
}
