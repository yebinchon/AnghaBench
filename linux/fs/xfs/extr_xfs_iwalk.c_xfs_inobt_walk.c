
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_inobt_walk_fn ;
typedef int xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_iwalk_ag {void* data; int startino; int pwork; int sz_recs; int inobt_walk_fn; struct xfs_trans* tp; struct xfs_mount* mp; } ;


 int ASSERT (int) ;
 int XFS_AGINO_TO_INO (struct xfs_mount*,scalar_t__,int ) ;
 unsigned int XFS_INOBT_WALK_FLAGS_ALL ;
 unsigned int XFS_INOBT_WALK_SAME_AG ;
 scalar_t__ XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_PWORK_SINGLE_THREADED ;
 int xfs_inobt_walk_prefetch (unsigned int) ;
 int xfs_iwalk_ag (struct xfs_iwalk_ag*) ;
 int xfs_iwalk_alloc (struct xfs_iwalk_ag*) ;
 int xfs_iwalk_free (struct xfs_iwalk_ag*) ;

int
xfs_inobt_walk(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_ino_t startino,
 unsigned int flags,
 xfs_inobt_walk_fn inobt_walk_fn,
 unsigned int inobt_records,
 void *data)
{
 struct xfs_iwalk_ag iwag = {
  .mp = mp,
  .tp = tp,
  .inobt_walk_fn = inobt_walk_fn,
  .data = data,
  .startino = startino,
  .sz_recs = xfs_inobt_walk_prefetch(inobt_records),
  .pwork = XFS_PWORK_SINGLE_THREADED,
 };
 xfs_agnumber_t agno = XFS_INO_TO_AGNO(mp, startino);
 int error;

 ASSERT(agno < mp->m_sb.sb_agcount);
 ASSERT(!(flags & ~XFS_INOBT_WALK_FLAGS_ALL));

 error = xfs_iwalk_alloc(&iwag);
 if (error)
  return error;

 for (; agno < mp->m_sb.sb_agcount; agno++) {
  error = xfs_iwalk_ag(&iwag);
  if (error)
   break;
  iwag.startino = XFS_AGINO_TO_INO(mp, agno + 1, 0);
  if (flags & XFS_INOBT_WALK_SAME_AG)
   break;
 }

 xfs_iwalk_free(&iwag);
 return error;
}
