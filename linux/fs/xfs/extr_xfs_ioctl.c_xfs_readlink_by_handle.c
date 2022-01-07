
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ohandle; int ohandlen; } ;
typedef TYPE_1__ xfs_fsop_handlereq_t ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
typedef int __u32 ;


 int CAP_SYS_ADMIN ;
 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int capable (int ) ;
 scalar_t__ copy_from_user (int *,int ,int) ;
 int d_is_symlink (struct dentry*) ;
 int dput (struct dentry*) ;
 int vfs_readlink (struct dentry*,int ,int ) ;
 struct dentry* xfs_handlereq_to_dentry (struct file*,TYPE_1__*) ;

int
xfs_readlink_by_handle(
 struct file *parfilp,
 xfs_fsop_handlereq_t *hreq)
{
 struct dentry *dentry;
 __u32 olen;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 dentry = xfs_handlereq_to_dentry(parfilp, hreq);
 if (IS_ERR(dentry))
  return PTR_ERR(dentry);


 if (!d_is_symlink(dentry)) {
  error = -EINVAL;
  goto out_dput;
 }

 if (copy_from_user(&olen, hreq->ohandlen, sizeof(__u32))) {
  error = -EFAULT;
  goto out_dput;
 }

 error = vfs_readlink(dentry, hreq->ohandle, olen);

 out_dput:
 dput(dentry);
 return error;
}
