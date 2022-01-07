
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 scalar_t__ XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 int xfs_verify_agbno (struct xfs_mount*,scalar_t__,int ) ;

bool
xfs_verify_fsbno(
 struct xfs_mount *mp,
 xfs_fsblock_t fsbno)
{
 xfs_agnumber_t agno = XFS_FSB_TO_AGNO(mp, fsbno);

 if (agno >= mp->m_sb.sb_agcount)
  return 0;
 return xfs_verify_agbno(mp, agno, XFS_FSB_TO_AGBNO(mp, fsbno));
}
