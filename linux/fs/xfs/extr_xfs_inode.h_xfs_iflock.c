
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int __xfs_iflock (struct xfs_inode*) ;
 int xfs_iflock_nowait (struct xfs_inode*) ;

__attribute__((used)) static inline void xfs_iflock(struct xfs_inode *ip)
{
 if (!xfs_iflock_nowait(ip))
  __xfs_iflock(ip);
}
