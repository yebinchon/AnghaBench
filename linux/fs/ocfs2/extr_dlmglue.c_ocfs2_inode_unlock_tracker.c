
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_lock_holder {int oh_ex; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_inode_lockres; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_remove_holder (struct ocfs2_lock_res*,struct ocfs2_lock_holder*) ;

void ocfs2_inode_unlock_tracker(struct inode *inode,
    int ex,
    struct ocfs2_lock_holder *oh,
    int had_lock)
{
 struct ocfs2_lock_res *lockres;

 lockres = &OCFS2_I(inode)->ip_inode_lockres;





 if (!had_lock) {
  ocfs2_inode_unlock(inode, oh->oh_ex);
  ocfs2_remove_holder(lockres, oh);
 }
}
