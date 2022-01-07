
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xfs_scrub {TYPE_2__* ip; TYPE_1__* sm; } ;
struct xfs_dinode {int dummy; } ;
struct TYPE_7__ {int i_mode; } ;
struct TYPE_6__ {int i_ino; } ;
struct TYPE_5__ {int sm_flags; int sm_ino; } ;


 scalar_t__ S_ISREG (int ) ;
 TYPE_3__* VFS_I (TYPE_2__*) ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 int xchk_dinode (struct xfs_scrub*,struct xfs_dinode*,int ) ;
 int xchk_ino_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_inode_check_reflink_iflag (struct xfs_scrub*,int ) ;
 int xchk_inode_xref (struct xfs_scrub*,int ,struct xfs_dinode*) ;
 int xfs_inode_to_disk (TYPE_2__*,struct xfs_dinode*,int ) ;

int
xchk_inode(
 struct xfs_scrub *sc)
{
 struct xfs_dinode di;
 int error = 0;






 if (!sc->ip) {
  xchk_ino_set_corrupt(sc, sc->sm->sm_ino);
  return 0;
 }


 xfs_inode_to_disk(sc->ip, &di, 0);
 xchk_dinode(sc, &di, sc->ip->i_ino);
 if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
  goto out;






 if (S_ISREG(VFS_I(sc->ip)->i_mode))
  xchk_inode_check_reflink_iflag(sc, sc->ip->i_ino);

 xchk_inode_xref(sc, sc->ip->i_ino, &di);
out:
 return error;
}
