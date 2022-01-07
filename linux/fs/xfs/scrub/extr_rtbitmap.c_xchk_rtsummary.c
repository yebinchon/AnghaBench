
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct xfs_scrub {int ilock_flags; struct xfs_inode* ip; TYPE_1__* sm; TYPE_2__* mp; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_4__ {struct xfs_inode* m_rsumip; } ;
struct TYPE_3__ {int sm_flags; } ;


 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_RTSUM ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 int xchk_metadata_inode_forks (struct xfs_scrub*) ;
 int xchk_set_incomplete (struct xfs_scrub*) ;
 int xfs_ilock (struct xfs_inode*,int) ;
 int xfs_iunlock (struct xfs_inode*,int) ;

int
xchk_rtsummary(
 struct xfs_scrub *sc)
{
 struct xfs_inode *rsumip = sc->mp->m_rsumip;
 struct xfs_inode *old_ip = sc->ip;
 uint old_ilock_flags = sc->ilock_flags;
 int error = 0;
 sc->ip = rsumip;
 sc->ilock_flags = XFS_ILOCK_EXCL | XFS_ILOCK_RTSUM;
 xfs_ilock(sc->ip, sc->ilock_flags);


 error = xchk_metadata_inode_forks(sc);
 if (error || (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT))
  goto out;


 xchk_set_incomplete(sc);
out:

 xfs_iunlock(sc->ip, sc->ilock_flags);
 sc->ilock_flags = old_ilock_flags;
 sc->ip = old_ip;
 return error;
}
