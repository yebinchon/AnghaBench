
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int dummy; } ;
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int brelse (struct buffer_head*) ;
 int ocfs2_acl_set_mode (struct inode*,struct buffer_head*,int *,int ) ;
 int ocfs2_inode_lock_tracker (struct inode*,struct buffer_head**,int,struct ocfs2_lock_holder*) ;
 int ocfs2_inode_unlock_tracker (struct inode*,int,struct ocfs2_lock_holder*,int) ;
 int ocfs2_set_acl (int *,struct inode*,struct buffer_head*,int,struct posix_acl*,int *,int *) ;
 int posix_acl_update_mode (struct inode*,int *,struct posix_acl**) ;

int ocfs2_iop_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 struct buffer_head *bh = ((void*)0);
 int status, had_lock;
 struct ocfs2_lock_holder oh;

 had_lock = ocfs2_inode_lock_tracker(inode, &bh, 1, &oh);
 if (had_lock < 0)
  return had_lock;
 if (type == ACL_TYPE_ACCESS && acl) {
  umode_t mode;

  status = posix_acl_update_mode(inode, &mode, &acl);
  if (status)
   goto unlock;

  status = ocfs2_acl_set_mode(inode, bh, ((void*)0), mode);
  if (status)
   goto unlock;
 }
 status = ocfs2_set_acl(((void*)0), inode, bh, type, acl, ((void*)0), ((void*)0));
unlock:
 ocfs2_inode_unlock_tracker(inode, 1, &oh, had_lock);
 brelse(bh);
 return status;
}
