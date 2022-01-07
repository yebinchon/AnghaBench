
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agblock_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_ifork {int if_flags; } ;
struct xfs_iext_cursor {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int br_blockcount; int br_startblock; } ;


 scalar_t__ NULLAGBLOCK ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_EXT_NORM ;
 scalar_t__ XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_IFEXTENTS ;
 struct xfs_ifork* XFS_IFORK_PTR (struct xfs_inode*,int ) ;
 scalar_t__ isnullstartblock (int ) ;
 int xfs_iext_lookup_extent (struct xfs_inode*,struct xfs_ifork*,int ,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iext_next_extent (struct xfs_ifork*,struct xfs_iext_cursor*,struct xfs_bmbt_irec*) ;
 int xfs_iread_extents (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_reflink_find_shared (struct xfs_mount*,struct xfs_trans*,int ,scalar_t__,int ,scalar_t__*,int *,int) ;

int
xfs_reflink_inode_has_shared_extents(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 bool *has_shared)
{
 struct xfs_bmbt_irec got;
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_ifork *ifp;
 xfs_agnumber_t agno;
 xfs_agblock_t agbno;
 xfs_extlen_t aglen;
 xfs_agblock_t rbno;
 xfs_extlen_t rlen;
 struct xfs_iext_cursor icur;
 bool found;
 int error;

 ifp = XFS_IFORK_PTR(ip, XFS_DATA_FORK);
 if (!(ifp->if_flags & XFS_IFEXTENTS)) {
  error = xfs_iread_extents(tp, ip, XFS_DATA_FORK);
  if (error)
   return error;
 }

 *has_shared = 0;
 found = xfs_iext_lookup_extent(ip, ifp, 0, &icur, &got);
 while (found) {
  if (isnullstartblock(got.br_startblock) ||
      got.br_state != XFS_EXT_NORM)
   goto next;
  agno = XFS_FSB_TO_AGNO(mp, got.br_startblock);
  agbno = XFS_FSB_TO_AGBNO(mp, got.br_startblock);
  aglen = got.br_blockcount;

  error = xfs_reflink_find_shared(mp, tp, agno, agbno, aglen,
    &rbno, &rlen, 0);
  if (error)
   return error;

  if (rbno != NULLAGBLOCK) {
   *has_shared = 1;
   return 0;
  }
next:
  found = xfs_iext_next_extent(ifp, &icur, &got);
 }

 return 0;
}
