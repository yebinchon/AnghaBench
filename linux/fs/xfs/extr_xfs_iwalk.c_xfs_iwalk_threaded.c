
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_iwalk_fn ;
typedef int xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct xfs_pwork_ctl {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_iwalk_ag {int pwork; int sz_recs; int startino; void* data; int iwalk_fn; struct xfs_mount* mp; } ;


 int ASSERT (int) ;
 int XFS_AGINO_TO_INO (struct xfs_mount*,scalar_t__,int ) ;
 unsigned int XFS_INOBT_WALK_SAME_AG ;
 scalar_t__ XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 unsigned int XFS_IWALK_FLAGS_ALL ;
 struct xfs_iwalk_ag* kmem_zalloc (int,int ) ;
 int xfs_iwalk_ag_work ;
 int xfs_iwalk_prefetch (unsigned int) ;
 scalar_t__ xfs_pwork_ctl_want_abort (struct xfs_pwork_ctl*) ;
 int xfs_pwork_destroy (struct xfs_pwork_ctl*) ;
 unsigned int xfs_pwork_guess_datadev_parallelism (struct xfs_mount*) ;
 int xfs_pwork_init (struct xfs_mount*,struct xfs_pwork_ctl*,int ,char*,unsigned int) ;
 int xfs_pwork_poll (struct xfs_pwork_ctl*) ;
 int xfs_pwork_queue (struct xfs_pwork_ctl*,int *) ;

int
xfs_iwalk_threaded(
 struct xfs_mount *mp,
 xfs_ino_t startino,
 unsigned int flags,
 xfs_iwalk_fn iwalk_fn,
 unsigned int inode_records,
 bool polled,
 void *data)
{
 struct xfs_pwork_ctl pctl;
 xfs_agnumber_t agno = XFS_INO_TO_AGNO(mp, startino);
 unsigned int nr_threads;
 int error;

 ASSERT(agno < mp->m_sb.sb_agcount);
 ASSERT(!(flags & ~XFS_IWALK_FLAGS_ALL));

 nr_threads = xfs_pwork_guess_datadev_parallelism(mp);
 error = xfs_pwork_init(mp, &pctl, xfs_iwalk_ag_work, "xfs_iwalk",
   nr_threads);
 if (error)
  return error;

 for (; agno < mp->m_sb.sb_agcount; agno++) {
  struct xfs_iwalk_ag *iwag;

  if (xfs_pwork_ctl_want_abort(&pctl))
   break;

  iwag = kmem_zalloc(sizeof(struct xfs_iwalk_ag), 0);
  iwag->mp = mp;
  iwag->iwalk_fn = iwalk_fn;
  iwag->data = data;
  iwag->startino = startino;
  iwag->sz_recs = xfs_iwalk_prefetch(inode_records);
  xfs_pwork_queue(&pctl, &iwag->pwork);
  startino = XFS_AGINO_TO_INO(mp, agno + 1, 0);
  if (flags & XFS_INOBT_WALK_SAME_AG)
   break;
 }

 if (polled)
  xfs_pwork_poll(&pctl);
 return xfs_pwork_destroy(&pctl);
}
