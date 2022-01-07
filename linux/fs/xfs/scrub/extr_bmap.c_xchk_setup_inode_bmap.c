
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_scrub {int ilock_flags; int ip; TYPE_1__* sm; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_5__ {int i_mapping; int i_mode; } ;
struct TYPE_4__ {scalar_t__ sm_type; } ;


 scalar_t__ S_ISREG (int ) ;
 TYPE_2__* VFS_I (int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_IOLOCK_EXCL ;
 int XFS_MMAPLOCK_EXCL ;
 scalar_t__ XFS_SCRUB_TYPE_BMBTD ;
 int filemap_write_and_wait (int ) ;
 int inode_dio_wait (TYPE_2__*) ;
 int xchk_get_inode (struct xfs_scrub*,struct xfs_inode*) ;
 int xchk_trans_alloc (struct xfs_scrub*,int ) ;
 int xfs_ilock (int ,int) ;

int
xchk_setup_inode_bmap(
 struct xfs_scrub *sc,
 struct xfs_inode *ip)
{
 int error;

 error = xchk_get_inode(sc, ip);
 if (error)
  goto out;

 sc->ilock_flags = XFS_IOLOCK_EXCL | XFS_MMAPLOCK_EXCL;
 xfs_ilock(sc->ip, sc->ilock_flags);






 if (S_ISREG(VFS_I(sc->ip)->i_mode) &&
     sc->sm->sm_type == XFS_SCRUB_TYPE_BMBTD) {
  inode_dio_wait(VFS_I(sc->ip));
  error = filemap_write_and_wait(VFS_I(sc->ip)->i_mapping);
  if (error)
   goto out;
 }


 error = xchk_trans_alloc(sc, 0);
 if (error)
  goto out;
 sc->ilock_flags |= XFS_ILOCK_EXCL;
 xfs_ilock(sc->ip, XFS_ILOCK_EXCL);

out:

 return error;
}
