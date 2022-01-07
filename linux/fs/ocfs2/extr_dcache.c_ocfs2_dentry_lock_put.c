
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {scalar_t__ dl_count; } ;


 int BUG_ON (int) ;
 int dentry_attach_lock ;
 int ocfs2_drop_dentry_lock (struct ocfs2_super*,struct ocfs2_dentry_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_dentry_lock_put(struct ocfs2_super *osb,
      struct ocfs2_dentry_lock *dl)
{
 int unlock = 0;

 BUG_ON(dl->dl_count == 0);

 spin_lock(&dentry_attach_lock);
 dl->dl_count--;
 unlock = !dl->dl_count;
 spin_unlock(&dentry_attach_lock);

 if (unlock)
  ocfs2_drop_dentry_lock(osb, dl);
}
