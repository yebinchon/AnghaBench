
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_dblocks; int sb_imax_pct; int sb_agblocks; } ;
typedef TYPE_1__ xfs_sb_t ;
typedef scalar_t__ xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agino_t ;
typedef int uint64_t ;
struct xfs_perag {int pagi_inodeok; int pagf_metadata; } ;
struct xfs_mount {int m_flags; TYPE_1__ m_sb; } ;
struct TYPE_4__ {scalar_t__ maxicount; } ;


 TYPE_2__* M_IGEO (struct xfs_mount*) ;
 int XFS_AGB_TO_AGINO (struct xfs_mount*,int) ;
 scalar_t__ XFS_AGINO_TO_INO (struct xfs_mount*,scalar_t__,int ) ;
 scalar_t__ XFS_MAXINUMBER_32 ;
 int XFS_MOUNT_32BITINODES ;
 int XFS_MOUNT_SMALL_INUMS ;
 int do_div (int,int) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;

xfs_agnumber_t
xfs_set_inode_alloc(
 struct xfs_mount *mp,
 xfs_agnumber_t agcount)
{
 xfs_agnumber_t index;
 xfs_agnumber_t maxagi = 0;
 xfs_sb_t *sbp = &mp->m_sb;
 xfs_agnumber_t max_metadata;
 xfs_agino_t agino;
 xfs_ino_t ino;





 if (M_IGEO(mp)->maxicount) {
  uint64_t icount;

  icount = sbp->sb_dblocks * sbp->sb_imax_pct;
  do_div(icount, 100);
  icount += sbp->sb_agblocks - 1;
  do_div(icount, sbp->sb_agblocks);
  max_metadata = icount;
 } else {
  max_metadata = agcount;
 }


 agino = XFS_AGB_TO_AGINO(mp, sbp->sb_agblocks - 1);
 ino = XFS_AGINO_TO_INO(mp, agcount - 1, agino);






 if ((mp->m_flags & XFS_MOUNT_SMALL_INUMS) && ino > XFS_MAXINUMBER_32)
  mp->m_flags |= XFS_MOUNT_32BITINODES;
 else
  mp->m_flags &= ~XFS_MOUNT_32BITINODES;

 for (index = 0; index < agcount; index++) {
  struct xfs_perag *pag;

  ino = XFS_AGINO_TO_INO(mp, index, agino);

  pag = xfs_perag_get(mp, index);

  if (mp->m_flags & XFS_MOUNT_32BITINODES) {
   if (ino > XFS_MAXINUMBER_32) {
    pag->pagi_inodeok = 0;
    pag->pagf_metadata = 0;
   } else {
    pag->pagi_inodeok = 1;
    maxagi++;
    if (index < max_metadata)
     pag->pagf_metadata = 1;
    else
     pag->pagf_metadata = 0;
   }
  } else {
   pag->pagi_inodeok = 1;
   pag->pagf_metadata = 0;
  }

  xfs_perag_put(pag);
 }

 return (mp->m_flags & XFS_MOUNT_32BITINODES) ? maxagi : agcount;
}
