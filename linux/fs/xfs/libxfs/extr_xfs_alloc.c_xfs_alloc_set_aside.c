
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int XFS_ALLOC_AGFL_RESERVE ;

unsigned int
xfs_alloc_set_aside(
 struct xfs_mount *mp)
{
 return mp->m_sb.sb_agcount * (XFS_ALLOC_AGFL_RESERVE + 4);
}
