
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int dl_lockres; int dl_inode; } ;


 int iput (int ) ;
 int kfree (struct ocfs2_dentry_lock*) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_simple_drop_lockres (struct ocfs2_super*,int *) ;

__attribute__((used)) static void ocfs2_drop_dentry_lock(struct ocfs2_super *osb,
       struct ocfs2_dentry_lock *dl)
{
 iput(dl->dl_inode);
 ocfs2_simple_drop_lockres(osb, &dl->dl_lockres);
 ocfs2_lock_res_free(&dl->dl_lockres);
 kfree(dl);
}
