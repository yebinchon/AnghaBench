
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
struct xfs_scrub {int ilock_flags; int flags; TYPE_2__* ip; int tp; struct xfs_mount* mp; } ;
struct TYPE_6__ {scalar_t__ sb_rootino; } ;
struct xfs_mount {TYPE_1__ m_sb; TYPE_2__* m_rootip; } ;
struct TYPE_8__ {int i_mode; } ;
struct TYPE_7__ {scalar_t__ i_ino; } ;


 int EDEADLOCK ;
 int ENOENT ;
 int S_ISDIR (int ) ;
 TYPE_4__* VFS_I (TYPE_2__*) ;
 int XCHK_TRY_HARDER ;
 int XFS_DATA_FORK ;
 int XFS_ILOCK_EXCL ;
 int XFS_MMAPLOCK_EXCL ;
 int xchk_fblock_process_error (struct xfs_scrub*,int ,int ,int*) ;
 int xchk_fblock_set_corrupt (struct xfs_scrub*,int ,int ) ;
 int xchk_parent_validate (struct xfs_scrub*,scalar_t__,int*) ;
 int xchk_set_incomplete (struct xfs_scrub*) ;
 int xfs_dir_lookup (int ,TYPE_2__*,int *,scalar_t__*,int *) ;
 int xfs_iunlock (TYPE_2__*,int) ;
 int xfs_name_dotdot ;
 int xfs_verify_dir_ino (struct xfs_mount*,scalar_t__) ;

int
xchk_parent(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 xfs_ino_t dnum;
 bool try_again;
 int tries = 0;
 int error = 0;





 if (!S_ISDIR(VFS_I(sc->ip)->i_mode))
  return -ENOENT;


 if (!xfs_verify_dir_ino(mp, sc->ip->i_ino)) {
  xchk_fblock_set_corrupt(sc, XFS_DATA_FORK, 0);
  goto out;
 }
 sc->ilock_flags &= ~(XFS_ILOCK_EXCL | XFS_MMAPLOCK_EXCL);
 xfs_iunlock(sc->ip, XFS_ILOCK_EXCL | XFS_MMAPLOCK_EXCL);


 error = xfs_dir_lookup(sc->tp, sc->ip, &xfs_name_dotdot, &dnum, ((void*)0));
 if (!xchk_fblock_process_error(sc, XFS_DATA_FORK, 0, &error))
  goto out;
 if (!xfs_verify_dir_ino(mp, dnum)) {
  xchk_fblock_set_corrupt(sc, XFS_DATA_FORK, 0);
  goto out;
 }


 if (sc->ip == mp->m_rootip) {
  if (sc->ip->i_ino != mp->m_sb.sb_rootino ||
      sc->ip->i_ino != dnum)
   xchk_fblock_set_corrupt(sc, XFS_DATA_FORK, 0);
  goto out;
 }

 do {
  error = xchk_parent_validate(sc, dnum, &try_again);
  if (error)
   goto out;
 } while (try_again && ++tries < 20);





 if (try_again && tries == 20)
  xchk_set_incomplete(sc);
out:




 if ((sc->flags & XCHK_TRY_HARDER) && error == -EDEADLOCK) {
  error = 0;
  xchk_set_incomplete(sc);
 }
 return error;
}
