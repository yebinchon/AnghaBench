
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agblock_t ;
struct xfs_mount {int dummy; } ;


 scalar_t__ XFS_AGFL_BLOCK (struct xfs_mount*) ;
 scalar_t__ xfs_ag_block_count (struct xfs_mount*,int ) ;

bool
xfs_verify_agbno(
 struct xfs_mount *mp,
 xfs_agnumber_t agno,
 xfs_agblock_t agbno)
{
 xfs_agblock_t eoag;

 eoag = xfs_ag_block_count(mp, agno);
 if (agbno >= eoag)
  return 0;
 if (agbno <= XFS_AGFL_BLOCK(mp))
  return 0;
 return 1;
}
