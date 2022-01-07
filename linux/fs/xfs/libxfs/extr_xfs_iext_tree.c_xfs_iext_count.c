
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extnum_t ;
struct xfs_ifork {int if_bytes; } ;
struct xfs_iext_rec {int dummy; } ;



inline xfs_extnum_t xfs_iext_count(struct xfs_ifork *ifp)
{
 return ifp->if_bytes / sizeof(struct xfs_iext_rec);
}
