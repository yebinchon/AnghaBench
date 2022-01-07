
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agino_t ;
typedef int xfs_agblock_t ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int cluster_align; } ;


 TYPE_1__* M_IGEO (struct xfs_mount*) ;
 scalar_t__ XFS_AGB_TO_AGINO (struct xfs_mount*,int ) ;
 scalar_t__ XFS_AGFL_BLOCK (struct xfs_mount*) ;
 int round_down (int ,int ) ;
 int round_up (scalar_t__,int ) ;
 int xfs_ag_block_count (struct xfs_mount*,int ) ;

void
xfs_agino_range(
 struct xfs_mount *mp,
 xfs_agnumber_t agno,
 xfs_agino_t *first,
 xfs_agino_t *last)
{
 xfs_agblock_t bno;
 xfs_agblock_t eoag;

 eoag = xfs_ag_block_count(mp, agno);





 bno = round_up(XFS_AGFL_BLOCK(mp) + 1, M_IGEO(mp)->cluster_align);
 *first = XFS_AGB_TO_AGINO(mp, bno);





 bno = round_down(eoag, M_IGEO(mp)->cluster_align);
 *last = XFS_AGB_TO_AGINO(mp, bno) - 1;
}
