
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_iwalk_fn ;
typedef int xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_iwalk_ag {void* data; int trim_start; int skip_empty; int startino; int pwork; int sz_recs; int iwalk_fn; struct xfs_trans* tp; struct xfs_mount* mp; } ;


 int ASSERT (int) ;
 int XFS_AGINO_TO_INO (struct xfs_mount*,scalar_t__,int ) ;
 unsigned int XFS_INOBT_WALK_SAME_AG ;
 scalar_t__ XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 unsigned int XFS_IWALK_FLAGS_ALL ;
 int XFS_PWORK_SINGLE_THREADED ;
 int xfs_iwalk_ag (struct xfs_iwalk_ag*) ;
 int xfs_iwalk_alloc (struct xfs_iwalk_ag*) ;
 int xfs_iwalk_free (struct xfs_iwalk_ag*) ;
 int xfs_iwalk_prefetch (unsigned int) ;

int
xfs_iwalk(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_ino_t startino,
 unsigned int flags,
 xfs_iwalk_fn iwalk_fn,
 unsigned int inode_records,
 void *data)
{
 struct xfs_iwalk_ag iwag = {
  .mp = mp,
  .tp = tp,
  .iwalk_fn = iwalk_fn,
  .data = data,
  .startino = startino,
  .sz_recs = xfs_iwalk_prefetch(inode_records),
  .trim_start = 1,
  .skip_empty = 1,
  .pwork = XFS_PWORK_SINGLE_THREADED,
 };
 xfs_agnumber_t agno = XFS_INO_TO_AGNO(mp, startino);
 int error;

 ASSERT(agno < mp->m_sb.sb_agcount);
 ASSERT(!(flags & ~XFS_IWALK_FLAGS_ALL));

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
