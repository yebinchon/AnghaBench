
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_scrub {TYPE_2__* sm; struct xchk_fscounters* buf; struct xfs_mount* mp; } ;
struct TYPE_3__ {scalar_t__ sb_dblocks; } ;
struct xfs_mount {int m_fdblocks; int m_ifree; int m_icount; TYPE_1__ m_sb; } ;
struct xchk_fscounters {scalar_t__ icount_min; scalar_t__ icount_max; int fdblocks; int ifree; int icount; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int sm_flags; } ;


 scalar_t__ XCHK_FSCOUNT_MIN_VARIANCE ;
 int XFS_SB_BLOCK (struct xfs_mount*) ;
 int XFS_SCRUB_OFLAG_INCOMPLETE ;
 scalar_t__ percpu_counter_sum (int *) ;
 int xchk_fscount_aggregate_agcounts (struct xfs_scrub*,struct xchk_fscounters*) ;
 int xchk_fscount_within_range (struct xfs_scrub*,scalar_t__,int *,int ) ;
 int xchk_process_error (struct xfs_scrub*,int ,int ,int*) ;
 int xchk_set_corrupt (struct xfs_scrub*) ;

int
xchk_fscounters(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 struct xchk_fscounters *fsc = sc->buf;
 int64_t icount, ifree, fdblocks;
 int error;


 icount = percpu_counter_sum(&mp->m_icount);
 ifree = percpu_counter_sum(&mp->m_ifree);
 fdblocks = percpu_counter_sum(&mp->m_fdblocks);


 if (icount < 0 || ifree < 0 || fdblocks < 0)
  xchk_set_corrupt(sc);


 if (icount < fsc->icount_min || icount > fsc->icount_max)
  xchk_set_corrupt(sc);


 if (fdblocks > mp->m_sb.sb_dblocks)
  xchk_set_corrupt(sc);





 if (ifree > icount && ifree - icount > XCHK_FSCOUNT_MIN_VARIANCE)
  xchk_set_corrupt(sc);


 error = xchk_fscount_aggregate_agcounts(sc, fsc);
 if (!xchk_process_error(sc, 0, XFS_SB_BLOCK(mp), &error))
  return error;
 if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_INCOMPLETE)
  return 0;


 if (!xchk_fscount_within_range(sc, icount, &mp->m_icount, fsc->icount))
  xchk_set_corrupt(sc);

 if (!xchk_fscount_within_range(sc, ifree, &mp->m_ifree, fsc->ifree))
  xchk_set_corrupt(sc);

 if (!xchk_fscount_within_range(sc, fdblocks, &mp->m_fdblocks,
   fsc->fdblocks))
  xchk_set_corrupt(sc);

 return 0;
}
