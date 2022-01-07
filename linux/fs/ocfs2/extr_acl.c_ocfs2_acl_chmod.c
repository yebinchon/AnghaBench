
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int i_mode; int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_xattr_sem; } ;


 int ACL_TYPE_ACCESS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_MOUNT_POSIX_ACL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 int __posix_acl_chmod (struct posix_acl**,int ,int ) ;
 int down_read (int *) ;
 struct posix_acl* ocfs2_get_acl_nolock (struct inode*,int ,struct buffer_head*) ;
 int ocfs2_set_acl (int *,struct inode*,int *,int ,struct posix_acl*,int *,int *) ;
 int posix_acl_release (struct posix_acl*) ;
 int up_read (int *) ;

int ocfs2_acl_chmod(struct inode *inode, struct buffer_head *bh)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct posix_acl *acl;
 int ret;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
  return 0;

 down_read(&OCFS2_I(inode)->ip_xattr_sem);
 acl = ocfs2_get_acl_nolock(inode, ACL_TYPE_ACCESS, bh);
 up_read(&OCFS2_I(inode)->ip_xattr_sem);
 if (IS_ERR(acl) || !acl)
  return PTR_ERR(acl);
 ret = __posix_acl_chmod(&acl, GFP_KERNEL, inode->i_mode);
 if (ret)
  return ret;
 ret = ocfs2_set_acl(((void*)0), inode, ((void*)0), ACL_TYPE_ACCESS,
       acl, ((void*)0), ((void*)0));
 posix_acl_release(acl);
 return ret;
}
