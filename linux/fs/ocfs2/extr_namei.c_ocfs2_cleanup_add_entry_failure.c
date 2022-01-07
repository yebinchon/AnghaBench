
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int dl_count; int dl_lockres; } ;
struct inode {int dummy; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; } ;


 int BUG_ON (int) ;
 int dentry_attach_lock ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dentry_lock*) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_simple_drop_lockres (struct ocfs2_super*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_cleanup_add_entry_failure(struct ocfs2_super *osb,
  struct dentry *dentry, struct inode *inode)
{
 struct ocfs2_dentry_lock *dl = dentry->d_fsdata;

 ocfs2_simple_drop_lockres(osb, &dl->dl_lockres);
 ocfs2_lock_res_free(&dl->dl_lockres);
 BUG_ON(dl->dl_count != 1);
 spin_lock(&dentry_attach_lock);
 dentry->d_fsdata = ((void*)0);
 spin_unlock(&dentry_attach_lock);
 kfree(dl);
 iput(inode);
}
