
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_ino_t ;
struct xfs_scrub {int ip; int tp; struct xfs_mount* mp; } ;
struct xfs_mount {int m_sb; } ;


 int XFS_INO_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_INO_TO_AGNO (struct xfs_mount*,int ) ;
 int xchk_ino_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_ino_set_preen (struct xfs_scrub*,int ) ;
 int xchk_xref_process_error (struct xfs_scrub*,int ,int ,int*) ;
 scalar_t__ xfs_is_reflink_inode (int ) ;
 int xfs_reflink_inode_has_shared_extents (int ,int ,int*) ;
 int xfs_sb_version_hasreflink (int *) ;

__attribute__((used)) static void
xchk_inode_check_reflink_iflag(
 struct xfs_scrub *sc,
 xfs_ino_t ino)
{
 struct xfs_mount *mp = sc->mp;
 bool has_shared;
 int error;

 if (!xfs_sb_version_hasreflink(&mp->m_sb))
  return;

 error = xfs_reflink_inode_has_shared_extents(sc->tp, sc->ip,
   &has_shared);
 if (!xchk_xref_process_error(sc, XFS_INO_TO_AGNO(mp, ino),
   XFS_INO_TO_AGBNO(mp, ino), &error))
  return;
 if (xfs_is_reflink_inode(sc->ip) && !has_shared)
  xchk_ino_set_preen(sc, ino);
 else if (!xfs_is_reflink_inode(sc->ip) && has_shared)
  xchk_ino_set_corrupt(sc, ino);
}
