
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
struct TYPE_2__ {scalar_t__ di_aformat; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_ifork_ops {int * (* verify_attr ) (struct xfs_inode*) ;} ;


 int XFS_ATTR_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_IFORK_PTR (struct xfs_inode*,int ) ;
 int * __this_address ;
 int * stub1 (struct xfs_inode*) ;

xfs_failaddr_t
xfs_ifork_verify_attr(
 struct xfs_inode *ip,
 struct xfs_ifork_ops *ops)
{

 if (ip->i_d.di_aformat != XFS_DINODE_FMT_LOCAL)
  return ((void*)0);
 if (!XFS_IFORK_PTR(ip, XFS_ATTR_FORK))
  return __this_address;
 return ops->verify_attr(ip);
}
