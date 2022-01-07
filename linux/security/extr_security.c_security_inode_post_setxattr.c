
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_PRIVATE (int ) ;
 int call_void_hook (int ,struct dentry*,char const*,void const*,size_t,int) ;
 int d_backing_inode (struct dentry*) ;
 int evm_inode_post_setxattr (struct dentry*,char const*,void const*,size_t) ;
 int inode_post_setxattr ;
 scalar_t__ unlikely (int ) ;

void security_inode_post_setxattr(struct dentry *dentry, const char *name,
      const void *value, size_t size, int flags)
{
 if (unlikely(IS_PRIVATE(d_backing_inode(dentry))))
  return;
 call_void_hook(inode_post_setxattr, dentry, name, value, size, flags);
 evm_inode_post_setxattr(dentry, name, value, size);
}
