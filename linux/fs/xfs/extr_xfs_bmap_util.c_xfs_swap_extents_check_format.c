
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int if_broot; } ;
struct TYPE_5__ {scalar_t__ di_format; scalar_t__ di_nextents; } ;
struct xfs_inode {TYPE_3__ i_df; TYPE_2__ i_d; TYPE_1__* i_mount; } ;
struct TYPE_4__ {int m_sb; } ;


 int EINVAL ;
 scalar_t__ XFS_BMAP_BMDR_SPACE (int ) ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 scalar_t__ XFS_IFORK_BOFF (struct xfs_inode*) ;
 scalar_t__ XFS_IFORK_MAXEXT (struct xfs_inode*,int ) ;
 scalar_t__ XFS_IFORK_NEXTENTS (struct xfs_inode*,int ) ;
 scalar_t__ XFS_IFORK_Q (struct xfs_inode*) ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;

__attribute__((used)) static int
xfs_swap_extents_check_format(
 struct xfs_inode *ip,
 struct xfs_inode *tip)
{


 if (ip->i_d.di_format == XFS_DINODE_FMT_LOCAL ||
     tip->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  return -EINVAL;





 if (ip->i_d.di_nextents < tip->i_d.di_nextents)
  return -EINVAL;





 if (xfs_sb_version_hasrmapbt(&ip->i_mount->m_sb))
  return 0;






 if (ip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     tip->i_d.di_format == XFS_DINODE_FMT_BTREE)
  return -EINVAL;


 if (tip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     XFS_IFORK_NEXTENTS(tip, XFS_DATA_FORK) >
   XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK))
  return -EINVAL;


 if (ip->i_d.di_format == XFS_DINODE_FMT_EXTENTS &&
     XFS_IFORK_NEXTENTS(ip, XFS_DATA_FORK) >
   XFS_IFORK_MAXEXT(tip, XFS_DATA_FORK))
  return -EINVAL;
 if (tip->i_d.di_format == XFS_DINODE_FMT_BTREE) {
  if (XFS_IFORK_Q(ip) &&
      XFS_BMAP_BMDR_SPACE(tip->i_df.if_broot) > XFS_IFORK_BOFF(ip))
   return -EINVAL;
  if (XFS_IFORK_NEXTENTS(tip, XFS_DATA_FORK) <=
      XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK))
   return -EINVAL;
 }


 if (ip->i_d.di_format == XFS_DINODE_FMT_BTREE) {
  if (XFS_IFORK_Q(tip) &&
      XFS_BMAP_BMDR_SPACE(ip->i_df.if_broot) > XFS_IFORK_BOFF(tip))
   return -EINVAL;
  if (XFS_IFORK_NEXTENTS(ip, XFS_DATA_FORK) <=
      XFS_IFORK_MAXEXT(tip, XFS_DATA_FORK))
   return -EINVAL;
 }

 return 0;
}
