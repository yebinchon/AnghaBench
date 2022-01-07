
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mknod ) (struct inode*,struct dentry*,int,int ) ;} ;


 int EPERM ;
 int S_IFCHR ;
 int WHITEOUT_DEV ;
 int WHITEOUT_MODE ;
 int may_create (struct inode*,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*,int,int ) ;

int vfs_whiteout(struct inode *dir, struct dentry *dentry)
{
 int error = may_create(dir, dentry);
 if (error)
  return error;

 if (!dir->i_op->mknod)
  return -EPERM;

 return dir->i_op->mknod(dir, dentry,
    S_IFCHR | WHITEOUT_MODE, WHITEOUT_DEV);
}
