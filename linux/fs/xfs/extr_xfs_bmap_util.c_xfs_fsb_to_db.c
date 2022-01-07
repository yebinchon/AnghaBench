
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_daddr_t ;
struct xfs_inode {int i_mount; } ;


 int XFS_FSB_TO_BB (int ,int ) ;
 int XFS_FSB_TO_DADDR (int ,int ) ;
 scalar_t__ XFS_IS_REALTIME_INODE (struct xfs_inode*) ;

xfs_daddr_t
xfs_fsb_to_db(struct xfs_inode *ip, xfs_fsblock_t fsb)
{
 if (XFS_IS_REALTIME_INODE(ip))
  return XFS_FSB_TO_BB(ip->i_mount, fsb);
 return XFS_FSB_TO_DADDR(ip->i_mount, fsb);
}
