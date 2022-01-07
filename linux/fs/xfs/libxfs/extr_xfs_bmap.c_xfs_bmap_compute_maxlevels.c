
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* m_bmap_dmnr; int* m_bm_maxlevels; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int uint ;


 int MAXAEXTNUM ;
 int MAXEXTNUM ;
 int MINABTPTRS ;
 int MINDBTPTRS ;
 int XFS_BMDR_SPACE_CALC (int ) ;
 int XFS_DATA_FORK ;
 int xfs_bmdr_maxrecs (int,int ) ;

void
xfs_bmap_compute_maxlevels(
 xfs_mount_t *mp,
 int whichfork)
{
 int level;
 uint maxblocks;
 uint maxleafents;
 int maxrootrecs;
 int minleafrecs;
 int minnoderecs;
 int sz;
 if (whichfork == XFS_DATA_FORK) {
  maxleafents = MAXEXTNUM;
  sz = XFS_BMDR_SPACE_CALC(MINDBTPTRS);
 } else {
  maxleafents = MAXAEXTNUM;
  sz = XFS_BMDR_SPACE_CALC(MINABTPTRS);
 }
 maxrootrecs = xfs_bmdr_maxrecs(sz, 0);
 minleafrecs = mp->m_bmap_dmnr[0];
 minnoderecs = mp->m_bmap_dmnr[1];
 maxblocks = (maxleafents + minleafrecs - 1) / minleafrecs;
 for (level = 1; maxblocks > 1; level++) {
  if (maxblocks <= maxrootrecs)
   maxblocks = 1;
  else
   maxblocks = (maxblocks + minnoderecs - 1) / minnoderecs;
 }
 mp->m_bm_maxlevels[whichfork] = level;
}
