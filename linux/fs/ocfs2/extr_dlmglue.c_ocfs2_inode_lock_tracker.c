
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_lock_holder {int oh_ex; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_inode_lockres; } ;


 int EINVAL ;
 int ENOENT ;
 int ML_ERROR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_META_LOCK_GETBH ;
 int current ;
 int dump_stack () ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 int ocfs2_add_holder (struct ocfs2_lock_res*,struct ocfs2_lock_holder*) ;
 int ocfs2_inode_lock_full (struct inode*,struct buffer_head**,int,int ) ;
 struct ocfs2_lock_holder* ocfs2_pid_holder (struct ocfs2_lock_res*,struct pid*) ;
 struct pid* task_pid (int ) ;
 scalar_t__ unlikely (int) ;

int ocfs2_inode_lock_tracker(struct inode *inode,
        struct buffer_head **ret_bh,
        int ex,
        struct ocfs2_lock_holder *oh)
{
 int status = 0;
 struct ocfs2_lock_res *lockres;
 struct ocfs2_lock_holder *tmp_oh;
 struct pid *pid = task_pid(current);


 lockres = &OCFS2_I(inode)->ip_inode_lockres;
 tmp_oh = ocfs2_pid_holder(lockres, pid);

 if (!tmp_oh) {




  status = ocfs2_inode_lock_full(inode, ret_bh, ex, 0);
  if (status < 0) {
   if (status != -ENOENT)
    mlog_errno(status);
   return status;
  }

  oh->oh_ex = ex;
  ocfs2_add_holder(lockres, oh);
  return 0;
 }

 if (unlikely(ex && !tmp_oh->oh_ex)) {



  mlog(ML_ERROR, "Recursive locking is not permitted to "
       "upgrade to EX level from PR level.\n");
  dump_stack();
  return -EINVAL;
 }





 if (ret_bh) {
  status = ocfs2_inode_lock_full(inode, ret_bh, ex,
            OCFS2_META_LOCK_GETBH);
  if (status < 0) {
   if (status != -ENOENT)
    mlog_errno(status);
   return status;
  }
 }
 return tmp_oh ? 1 : 0;
}
