
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {int ilock_flags; int ip; TYPE_1__* mp; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int m_rbmip; } ;


 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_RTBITMAP ;
 int xchk_setup_fs (struct xfs_scrub*,struct xfs_inode*) ;
 int xfs_ilock (int ,int) ;

int
xchk_setup_rt(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 int error;

 error = xchk_setup_fs(sc, ip);
 if (error)
  return error;

 sc->ilock_flags = XFS_ILOCK_EXCL | XFS_ILOCK_RTBITMAP;
 sc->ip = sc->mp->m_rbmip;
 xfs_ilock(sc->ip, sc->ilock_flags);

 return 0;
}
