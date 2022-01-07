
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct xfs_scrub {int ilock_flags; int ip; TYPE_2__* mp; int flags; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_7__ {TYPE_1__* m_quotainfo; } ;
struct TYPE_6__ {int qi_quotaofflock; } ;


 int EINVAL ;
 int ENOENT ;
 int XCHK_HAS_QUOTAOFFLOCK ;
 int XFS_ILOCK_EXCL ;
 int XFS_IS_QUOTA_ON (TYPE_2__*) ;
 int XFS_IS_QUOTA_RUNNING (TYPE_2__*) ;
 int mutex_lock (int *) ;
 scalar_t__ xchk_quota_to_dqtype (struct xfs_scrub*) ;
 int xchk_setup_fs (struct xfs_scrub*,struct xfs_inode*) ;
 int xfs_ilock (int ,int ) ;
 int xfs_quota_inode (TYPE_2__*,scalar_t__) ;
 int xfs_this_quota_on (TYPE_2__*,scalar_t__) ;

int
xchk_setup_quota(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 uint dqtype;
 int error;

 if (!XFS_IS_QUOTA_RUNNING(sc->mp) || !XFS_IS_QUOTA_ON(sc->mp))
  return -ENOENT;

 dqtype = xchk_quota_to_dqtype(sc);
 if (dqtype == 0)
  return -EINVAL;
 sc->flags |= XCHK_HAS_QUOTAOFFLOCK;
 mutex_lock(&sc->mp->m_quotainfo->qi_quotaofflock);
 if (!xfs_this_quota_on(sc->mp, dqtype))
  return -ENOENT;
 error = xchk_setup_fs(sc, ip);
 if (error)
  return error;
 sc->ip = xfs_quota_inode(sc->mp, dqtype);
 xfs_ilock(sc->ip, XFS_ILOCK_EXCL);
 sc->ilock_flags = XFS_ILOCK_EXCL;
 return 0;
}
