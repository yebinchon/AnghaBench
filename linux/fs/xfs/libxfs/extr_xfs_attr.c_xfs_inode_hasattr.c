
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ di_aformat; scalar_t__ di_anextents; } ;
struct xfs_inode {TYPE_1__ i_d; } ;


 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 int XFS_IFORK_Q (struct xfs_inode*) ;

int
xfs_inode_hasattr(
 struct xfs_inode *ip)
{
 if (!XFS_IFORK_Q(ip) ||
     (ip->i_d.di_aformat == XFS_DINODE_FMT_EXTENTS &&
      ip->i_d.di_anextents == 0))
  return 0;
 return 1;
}
