
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int XFS_COW_FORK ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 scalar_t__ XFS_IFORK_FORMAT (struct xfs_inode*,int) ;
 scalar_t__ XFS_IFORK_MAXEXT (struct xfs_inode*,int) ;
 scalar_t__ XFS_IFORK_NEXTENTS (struct xfs_inode*,int) ;

__attribute__((used)) static inline bool xfs_bmap_needs_btree(struct xfs_inode *ip, int whichfork)
{
 return whichfork != XFS_COW_FORK &&
  XFS_IFORK_FORMAT(ip, whichfork) == XFS_DINODE_FMT_EXTENTS &&
  XFS_IFORK_NEXTENTS(ip, whichfork) >
   XFS_IFORK_MAXEXT(ip, whichfork);
}
