
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int __xfs_iunpin_wait (struct xfs_inode*) ;
 scalar_t__ xfs_ipincount (struct xfs_inode*) ;

void
xfs_iunpin_wait(
 struct xfs_inode *ip)
{
 if (xfs_ipincount(ip))
  __xfs_iunpin_wait(ip);
}
