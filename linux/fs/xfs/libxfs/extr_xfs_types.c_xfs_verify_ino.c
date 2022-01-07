
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef int xfs_agino_t ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 scalar_t__ XFS_AGINO_TO_INO (struct xfs_mount*,scalar_t__,int ) ;
 int XFS_INO_TO_AGINO (struct xfs_mount*,scalar_t__) ;
 scalar_t__ XFS_INO_TO_AGNO (struct xfs_mount*,scalar_t__) ;
 int xfs_verify_agino (struct xfs_mount*,scalar_t__,int ) ;

bool
xfs_verify_ino(
 struct xfs_mount *mp,
 xfs_ino_t ino)
{
 xfs_agnumber_t agno = XFS_INO_TO_AGNO(mp, ino);
 xfs_agino_t agino = XFS_INO_TO_AGINO(mp, ino);

 if (agno >= mp->m_sb.sb_agcount)
  return 0;
 if (XFS_AGINO_TO_INO(mp, agno, agino) != ino)
  return 0;
 return xfs_verify_agino(mp, agno, agino);
}
