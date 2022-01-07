
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_failaddr_t ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int * if_data; } ;
struct xfs_ifork {int if_bytes; TYPE_1__ if_u1; } ;


 int EFSCORRUPTED ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int ) ;
 int xfs_default_ifork_ops ;
 scalar_t__ xfs_ifork_verify_attr (struct xfs_inode*,int *) ;
 scalar_t__ xfs_ifork_verify_data (struct xfs_inode*,int *) ;
 int xfs_inode_verifier_error (struct xfs_inode*,int ,char*,int *,int ,scalar_t__) ;

bool
xfs_inode_verify_forks(
 struct xfs_inode *ip)
{
 struct xfs_ifork *ifp;
 xfs_failaddr_t fa;

 fa = xfs_ifork_verify_data(ip, &xfs_default_ifork_ops);
 if (fa) {
  ifp = XFS_IFORK_PTR(ip, XFS_DATA_FORK);
  xfs_inode_verifier_error(ip, -EFSCORRUPTED, "data fork",
    ifp->if_u1.if_data, ifp->if_bytes, fa);
  return 0;
 }

 fa = xfs_ifork_verify_attr(ip, &xfs_default_ifork_ops);
 if (fa) {
  ifp = XFS_IFORK_PTR(ip, XFS_ATTR_FORK);
  xfs_inode_verifier_error(ip, -EFSCORRUPTED, "attr fork",
    ifp ? ifp->if_u1.if_data : ((void*)0),
    ifp ? ifp->if_bytes : 0, fa);
  return 0;
 }
 return 1;
}
