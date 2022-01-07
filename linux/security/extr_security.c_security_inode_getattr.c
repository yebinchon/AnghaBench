
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 int IS_PRIVATE (int ) ;
 int call_int_hook (int ,int ,struct path const*) ;
 int d_backing_inode (int ) ;
 int inode_getattr ;
 scalar_t__ unlikely (int ) ;

int security_inode_getattr(const struct path *path)
{
 if (unlikely(IS_PRIVATE(d_backing_inode(path->dentry))))
  return 0;
 return call_int_hook(inode_getattr, 0, path);
}
