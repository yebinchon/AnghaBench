
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xfs_ifork {int if_bytes; } ;


 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 scalar_t__ XFS_IFORK_FORMAT (struct xfs_inode*,int) ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int) ;
 int xfs_idata_realloc (struct xfs_inode*,int ,int) ;

__attribute__((used)) static inline void
xfs_ifree_local_data(
 struct xfs_inode *ip,
 int whichfork)
{
 struct xfs_ifork *ifp;

 if (XFS_IFORK_FORMAT(ip, whichfork) != XFS_DINODE_FMT_LOCAL)
  return;

 ifp = XFS_IFORK_PTR(ip, whichfork);
 xfs_idata_realloc(ip, -ifp->if_bytes, whichfork);
}
