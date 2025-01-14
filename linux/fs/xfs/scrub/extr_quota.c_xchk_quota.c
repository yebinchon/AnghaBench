
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_scrub {scalar_t__ ilock_flags; int ip; TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_quotainfo {int qi_dqperchunk; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xchk_quota_info {int last_id; struct xfs_scrub* sc; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_DATA_FORK ;
 scalar_t__ XFS_ILOCK_EXCL ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 int xchk_fblock_process_error (struct xfs_scrub*,int ,int,int*) ;
 int xchk_quota_data_fork (struct xfs_scrub*) ;
 int xchk_quota_item ;
 int xchk_quota_to_dqtype (struct xfs_scrub*) ;
 int xfs_ilock (int ,scalar_t__) ;
 int xfs_iunlock (int ,scalar_t__) ;
 int xfs_qm_dqiterate (struct xfs_mount*,int ,int ,struct xchk_quota_info*) ;

int
xchk_quota(
 struct xfs_scrub *sc)
{
 struct xchk_quota_info sqi;
 struct xfs_mount *mp = sc->mp;
 struct xfs_quotainfo *qi = mp->m_quotainfo;
 uint dqtype;
 int error = 0;

 dqtype = xchk_quota_to_dqtype(sc);


 error = xchk_quota_data_fork(sc);
 if (error)
  goto out;
 if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
  goto out;






 xfs_iunlock(sc->ip, sc->ilock_flags);
 sc->ilock_flags = 0;
 sqi.sc = sc;
 sqi.last_id = 0;
 error = xfs_qm_dqiterate(mp, dqtype, xchk_quota_item, &sqi);
 sc->ilock_flags = XFS_ILOCK_EXCL;
 xfs_ilock(sc->ip, sc->ilock_flags);
 if (!xchk_fblock_process_error(sc, XFS_DATA_FORK,
   sqi.last_id * qi->qi_dqperchunk, &error))
  goto out;

out:
 return error;
}
