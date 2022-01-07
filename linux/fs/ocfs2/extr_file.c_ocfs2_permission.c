
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_holder {int dummy; } ;
struct inode {int dummy; } ;


 int ECHILD ;
 int MAY_NOT_BLOCK ;
 int ML_ERROR ;
 int dump_stack () ;
 int generic_permission (struct inode*,int) ;
 int mlog (int ,char*) ;
 int ocfs2_inode_lock_tracker (struct inode*,int *,int ,struct ocfs2_lock_holder*) ;
 int ocfs2_inode_unlock_tracker (struct inode*,int ,struct ocfs2_lock_holder*,int) ;

int ocfs2_permission(struct inode *inode, int mask)
{
 int ret, had_lock;
 struct ocfs2_lock_holder oh;

 if (mask & MAY_NOT_BLOCK)
  return -ECHILD;

 had_lock = ocfs2_inode_lock_tracker(inode, ((void*)0), 0, &oh);
 if (had_lock < 0) {
  ret = had_lock;
  goto out;
 } else if (had_lock) {
  mlog(ML_ERROR, "Another case of recursive locking:\n");
  dump_stack();
 }

 ret = generic_permission(inode, mask);

 ocfs2_inode_unlock_tracker(inode, 0, &oh, had_lock);
out:
 return ret;
}
