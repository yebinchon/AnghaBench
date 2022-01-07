
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int sb_dblocks; } ;
struct xfs_mount {int* m_low_space; TYPE_1__ m_sb; } ;


 int XFS_LOWSP_MAX ;
 int do_div (int,int) ;

void
xfs_set_low_space_thresholds(
 struct xfs_mount *mp)
{
 int i;

 for (i = 0; i < XFS_LOWSP_MAX; i++) {
  uint64_t space = mp->m_sb.sb_dblocks;

  do_div(space, 100);
  mp->m_low_space[i] = space * (i + 1);
 }
}
