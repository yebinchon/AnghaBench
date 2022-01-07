
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int (* mknod ) (struct inode*,struct dentry*,int ,int ) ;} ;


 int CAP_MKNOD ;
 int EPERM ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int capable (int ) ;
 int devcgroup_inode_mknod (int ,int ) ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int may_create (struct inode*,struct dentry*) ;
 int security_inode_mknod (struct inode*,struct dentry*,int ,int ) ;
 int stub1 (struct inode*,struct dentry*,int ,int ) ;

int vfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
 int error = may_create(dir, dentry);

 if (error)
  return error;

 if ((S_ISCHR(mode) || S_ISBLK(mode)) && !capable(CAP_MKNOD))
  return -EPERM;

 if (!dir->i_op->mknod)
  return -EPERM;

 error = devcgroup_inode_mknod(mode, dev);
 if (error)
  return error;

 error = security_inode_mknod(dir, dentry, mode, dev);
 if (error)
  return error;

 error = dir->i_op->mknod(dir, dentry, mode, dev);
 if (!error)
  fsnotify_create(dir, dentry);
 return error;
}
