
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 int OVL_XATTR_METACOPY ;
 int S_ISREG (int ) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int pr_warn_ratelimited (char*,int) ;
 int vfs_getxattr (struct dentry*,int ,int *,int ) ;

int ovl_check_metacopy_xattr(struct dentry *dentry)
{
 int res;


 if (!S_ISREG(d_inode(dentry)->i_mode))
  return 0;

 res = vfs_getxattr(dentry, OVL_XATTR_METACOPY, ((void*)0), 0);
 if (res < 0) {
  if (res == -ENODATA || res == -EOPNOTSUPP)
   return 0;
  goto out;
 }

 return 1;
out:
 pr_warn_ratelimited("overlayfs: failed to get metacopy (%i)\n", res);
 return res;
}
