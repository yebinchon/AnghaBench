
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int i_ino; } ;
struct xfs_bmbt_irec {int dummy; } ;


 int XFS_RMAP_CONVERT ;
 int XFS_RMAP_CONVERT_SHARED ;
 int __xfs_rmap_add (struct xfs_trans*,int ,int ,int,struct xfs_bmbt_irec*) ;
 scalar_t__ xfs_is_reflink_inode (struct xfs_inode*) ;
 int xfs_rmap_update_is_needed (struct xfs_mount*,int) ;

void
xfs_rmap_convert_extent(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 int whichfork,
 struct xfs_bmbt_irec *PREV)
{
 if (!xfs_rmap_update_is_needed(mp, whichfork))
  return;

 __xfs_rmap_add(tp, xfs_is_reflink_inode(ip) ?
   XFS_RMAP_CONVERT_SHARED : XFS_RMAP_CONVERT, ip->i_ino,
   whichfork, PREV);
}
