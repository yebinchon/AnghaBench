
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct inode*,struct dentry*,char const*) ;
 int inode_symlink ;
 scalar_t__ unlikely (int ) ;

int security_inode_symlink(struct inode *dir, struct dentry *dentry,
       const char *old_name)
{
 if (unlikely(IS_PRIVATE(dir)))
  return 0;
 return call_int_hook(inode_symlink, 0, dir, dentry, old_name);
}
