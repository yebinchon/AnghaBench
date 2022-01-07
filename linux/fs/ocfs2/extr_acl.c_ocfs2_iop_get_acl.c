
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_xattr_sem; } ;


 struct posix_acl* ERR_PTR (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_MOUNT_POSIX_ACL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 struct posix_acl* ocfs2_get_acl_nolock (struct inode*,int,struct buffer_head*) ;
 int ocfs2_inode_lock_tracker (struct inode*,struct buffer_head**,int ,struct ocfs2_lock_holder*) ;
 int ocfs2_inode_unlock_tracker (struct inode*,int ,struct ocfs2_lock_holder*,int) ;
 int up_read (int *) ;

struct posix_acl *ocfs2_iop_get_acl(struct inode *inode, int type)
{
 struct ocfs2_super *osb;
 struct buffer_head *di_bh = ((void*)0);
 struct posix_acl *acl;
 int had_lock;
 struct ocfs2_lock_holder oh;

 osb = OCFS2_SB(inode->i_sb);
 if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
  return ((void*)0);

 had_lock = ocfs2_inode_lock_tracker(inode, &di_bh, 0, &oh);
 if (had_lock < 0)
  return ERR_PTR(had_lock);

 down_read(&OCFS2_I(inode)->ip_xattr_sem);
 acl = ocfs2_get_acl_nolock(inode, type, di_bh);
 up_read(&OCFS2_I(inode)->ip_xattr_sem);

 ocfs2_inode_unlock_tracker(inode, 0, &oh, had_lock);
 brelse(di_bh);
 return acl;
}
