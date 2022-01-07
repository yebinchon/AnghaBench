
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int IS_PRIVATE (struct inode*) ;
 int call_int_hook (int ,int ,struct inode*,int) ;
 int inode_permission ;
 scalar_t__ unlikely (int ) ;

int security_inode_permission(struct inode *inode, int mask)
{
 if (unlikely(IS_PRIVATE(inode)))
  return 0;
 return call_int_hook(inode_permission, 0, inode, mask);
}
