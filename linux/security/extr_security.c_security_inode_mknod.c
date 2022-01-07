
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct inode*,struct dentry*,int ,int ) ;
 int inode_mknod ;
 scalar_t__ unlikely (int ) ;

int security_inode_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
 if (unlikely(IS_PRIVATE(dir)))
  return 0;
 return call_int_hook(inode_mknod, 0, dir, dentry, mode, dev);
}
