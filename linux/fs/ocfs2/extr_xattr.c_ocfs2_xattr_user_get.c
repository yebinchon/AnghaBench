
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int OCFS2_MOUNT_NOUSERXATTR ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_XATTR_INDEX_USER ;
 int ocfs2_xattr_get (struct inode*,int ,char const*,void*,size_t) ;

__attribute__((used)) static int ocfs2_xattr_user_get(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *name, void *buffer, size_t size)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (osb->s_mount_opt & OCFS2_MOUNT_NOUSERXATTR)
  return -EOPNOTSUPP;
 return ocfs2_xattr_get(inode, OCFS2_XATTR_INDEX_USER, name,
          buffer, size);
}
