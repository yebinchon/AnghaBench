
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int sb_agcount; int sb_agblocks; int sb_dblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int ASSERT (int) ;

xfs_agblock_t
xfs_ag_block_count(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 ASSERT(agno < mp->m_sb.sb_agcount);

 if (agno < mp->m_sb.sb_agcount - 1)
  return mp->m_sb.sb_agblocks;
 return mp->m_sb.sb_dblocks - (agno * mp->m_sb.sb_agblocks);
}
