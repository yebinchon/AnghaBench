
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int erase_wait; int erase_free_sem; int erase_completion_lock; int erase_complete_list; } ;
struct jffs2_eraseblock {int list; int offset; } ;


 int jffs2_dbg (int,char*,int ) ;
 int jffs2_garbage_collect_trigger (struct jffs2_sb_info*) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void jffs2_erase_succeeded(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb)
{
 jffs2_dbg(1, "Erase completed successfully at 0x%08x\n", jeb->offset);
 mutex_lock(&c->erase_free_sem);
 spin_lock(&c->erase_completion_lock);
 list_move_tail(&jeb->list, &c->erase_complete_list);

 jffs2_garbage_collect_trigger(c);
 spin_unlock(&c->erase_completion_lock);
 mutex_unlock(&c->erase_free_sem);
 wake_up(&c->erase_wait);
}
