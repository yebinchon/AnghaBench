
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct inode*,struct dentry*,int ) ;
 int inode_mkdir ;
 scalar_t__ unlikely (int ) ;

int security_inode_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 if (unlikely(IS_PRIVATE(dir)))
  return 0;
 return call_int_hook(inode_mkdir, 0, dir, dentry, mode);
}
