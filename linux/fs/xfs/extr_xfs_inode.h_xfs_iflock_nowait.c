
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int XFS_IFLOCK ;
 int xfs_iflags_test_and_set (struct xfs_inode*,int ) ;

__attribute__((used)) static inline int xfs_iflock_nowait(struct xfs_inode *ip)
{
 return !xfs_iflags_test_and_set(ip, XFS_IFLOCK);
}
