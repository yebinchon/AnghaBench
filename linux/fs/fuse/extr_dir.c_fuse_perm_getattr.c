
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ECHILD ;
 int MAY_NOT_BLOCK ;
 int forget_all_cached_acls (struct inode*) ;
 int fuse_do_getattr (struct inode*,int *,int *) ;

__attribute__((used)) static int fuse_perm_getattr(struct inode *inode, int mask)
{
 if (mask & MAY_NOT_BLOCK)
  return -ECHILD;

 forget_all_cached_acls(inode);
 return fuse_do_getattr(inode, ((void*)0), ((void*)0));
}
