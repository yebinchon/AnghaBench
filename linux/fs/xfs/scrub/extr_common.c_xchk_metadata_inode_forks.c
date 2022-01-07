
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xfs_scrub {TYPE_4__* ip; int tp; TYPE_3__* mp; TYPE_2__* sm; } ;
typedef int __u32 ;
struct TYPE_7__ {int di_flags; } ;
struct TYPE_10__ {int i_ino; TYPE_1__ i_d; } ;
struct TYPE_9__ {int m_sb; } ;
struct TYPE_8__ {int sm_flags; int sm_type; } ;


 int XFS_DATA_FORK ;
 int XFS_DIFLAG_REALTIME ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 int XFS_SCRUB_TYPE_BMBTD ;
 int xchk_bmap_data (struct xfs_scrub*) ;
 int xchk_fblock_process_error (struct xfs_scrub*,int ,int ,int*) ;
 int xchk_ino_set_corrupt (struct xfs_scrub*,int ) ;
 scalar_t__ xfs_inode_hasattr (TYPE_4__*) ;
 scalar_t__ xfs_is_reflink_inode (TYPE_4__*) ;
 int xfs_reflink_inode_has_shared_extents (int ,TYPE_4__*,int*) ;
 scalar_t__ xfs_sb_version_hasreflink (int *) ;

int
xchk_metadata_inode_forks(
 struct xfs_scrub *sc)
{
 __u32 smtype;
 bool shared;
 int error;

 if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
  return 0;


 if (sc->ip->i_d.di_flags & XFS_DIFLAG_REALTIME) {
  xchk_ino_set_corrupt(sc, sc->ip->i_ino);
  return 0;
 }


 if (xfs_is_reflink_inode(sc->ip)) {
  xchk_ino_set_corrupt(sc, sc->ip->i_ino);
  return 0;
 }


 if (xfs_inode_hasattr(sc->ip)) {
  xchk_ino_set_corrupt(sc, sc->ip->i_ino);
  return 0;
 }


 smtype = sc->sm->sm_type;
 sc->sm->sm_type = XFS_SCRUB_TYPE_BMBTD;
 error = xchk_bmap_data(sc);
 sc->sm->sm_type = smtype;
 if (error || (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT))
  return error;


 if (xfs_sb_version_hasreflink(&sc->mp->m_sb)) {
  error = xfs_reflink_inode_has_shared_extents(sc->tp, sc->ip,
    &shared);
  if (!xchk_fblock_process_error(sc, XFS_DATA_FORK, 0,
    &error))
   return error;
  if (shared)
   xchk_ino_set_corrupt(sc, sc->ip->i_ino);
 }

 return error;
}
