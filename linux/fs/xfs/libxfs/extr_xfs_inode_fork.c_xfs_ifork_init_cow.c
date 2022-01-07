
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {scalar_t__ i_cnextents; int i_cformat; TYPE_1__* i_cowfp; } ;
struct TYPE_2__ {int if_flags; } ;


 int KM_NOFS ;
 int XFS_DINODE_FMT_EXTENTS ;
 int XFS_IFEXTENTS ;
 TYPE_1__* kmem_zone_zalloc (int ,int ) ;
 int xfs_ifork_zone ;

void
xfs_ifork_init_cow(
 struct xfs_inode *ip)
{
 if (ip->i_cowfp)
  return;

 ip->i_cowfp = kmem_zone_zalloc(xfs_ifork_zone,
           KM_NOFS);
 ip->i_cowfp->if_flags = XFS_IFEXTENTS;
 ip->i_cformat = XFS_DINODE_FMT_EXTENTS;
 ip->i_cnextents = 0;
}
