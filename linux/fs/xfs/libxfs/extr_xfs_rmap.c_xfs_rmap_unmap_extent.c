
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int t_mountp; } ;
struct xfs_inode {int i_ino; } ;
struct xfs_bmbt_irec {int dummy; } ;


 int XFS_RMAP_UNMAP ;
 int XFS_RMAP_UNMAP_SHARED ;
 int __xfs_rmap_add (struct xfs_trans*,int ,int ,int,struct xfs_bmbt_irec*) ;
 scalar_t__ xfs_is_reflink_inode (struct xfs_inode*) ;
 int xfs_rmap_update_is_needed (int ,int) ;

void
xfs_rmap_unmap_extent(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 int whichfork,
 struct xfs_bmbt_irec *PREV)
{
 if (!xfs_rmap_update_is_needed(tp->t_mountp, whichfork))
  return;

 __xfs_rmap_add(tp, xfs_is_reflink_inode(ip) ?
   XFS_RMAP_UNMAP_SHARED : XFS_RMAP_UNMAP, ip->i_ino,
   whichfork, PREV);
}
