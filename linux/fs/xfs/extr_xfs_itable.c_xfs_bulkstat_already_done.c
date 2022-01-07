
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

__attribute__((used)) static inline bool
xfs_bulkstat_already_done(
 struct xfs_mount *mp,
 xfs_ino_t startino)
{
 xfs_agnumber_t agno = XFS_INO_TO_AGNO(mp, startino);
 xfs_agino_t agino = XFS_INO_TO_AGINO(mp, startino);

 return agno >= mp->m_sb.sb_agcount ||
        startino != XFS_AGINO_TO_INO(mp, agno, agino);
}
