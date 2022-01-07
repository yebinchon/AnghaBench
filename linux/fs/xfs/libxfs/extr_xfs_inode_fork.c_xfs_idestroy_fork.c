
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * i_cowfp; int * i_afp; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_6__ {int * if_data; } ;
struct xfs_ifork {int if_flags; scalar_t__ if_height; TYPE_1__ if_u1; int * if_broot; } ;


 int XFS_ATTR_FORK ;
 int XFS_COW_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_IFEXTENTS ;
 scalar_t__ XFS_IFORK_FORMAT (TYPE_2__*,int) ;
 struct xfs_ifork* XFS_IFORK_PTR (TYPE_2__*,int) ;
 int kmem_free (int *) ;
 int kmem_zone_free (int ,int *) ;
 int xfs_iext_destroy (struct xfs_ifork*) ;
 int xfs_ifork_zone ;

void
xfs_idestroy_fork(
 xfs_inode_t *ip,
 int whichfork)
{
 struct xfs_ifork *ifp;

 ifp = XFS_IFORK_PTR(ip, whichfork);
 if (ifp->if_broot != ((void*)0)) {
  kmem_free(ifp->if_broot);
  ifp->if_broot = ((void*)0);
 }







 if (XFS_IFORK_FORMAT(ip, whichfork) == XFS_DINODE_FMT_LOCAL) {
  if (ifp->if_u1.if_data != ((void*)0)) {
   kmem_free(ifp->if_u1.if_data);
   ifp->if_u1.if_data = ((void*)0);
  }
 } else if ((ifp->if_flags & XFS_IFEXTENTS) && ifp->if_height) {
  xfs_iext_destroy(ifp);
 }

 if (whichfork == XFS_ATTR_FORK) {
  kmem_zone_free(xfs_ifork_zone, ip->i_afp);
  ip->i_afp = ((void*)0);
 } else if (whichfork == XFS_COW_FORK) {
  kmem_zone_free(xfs_ifork_zone, ip->i_cowfp);
  ip->i_cowfp = ((void*)0);
 }
}
