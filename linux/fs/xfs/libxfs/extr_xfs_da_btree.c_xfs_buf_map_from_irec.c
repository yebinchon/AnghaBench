
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_buf_map {int bm_len; int bm_bn; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; int br_blockcount; } ;


 int ASSERT (int) ;
 scalar_t__ DELAYSTARTBLOCK ;
 int ENOMEM ;
 scalar_t__ HOLESTARTBLOCK ;
 int KM_NOFS ;
 int XFS_FSB_TO_BB (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,scalar_t__) ;
 struct xfs_buf_map* kmem_zalloc (int,int ) ;

__attribute__((used)) static int
xfs_buf_map_from_irec(
 struct xfs_mount *mp,
 struct xfs_buf_map **mapp,
 int *nmaps,
 struct xfs_bmbt_irec *irecs,
 int nirecs)
{
 struct xfs_buf_map *map;
 int i;

 ASSERT(*nmaps == 1);
 ASSERT(nirecs >= 1);

 if (nirecs > 1) {
  map = kmem_zalloc(nirecs * sizeof(struct xfs_buf_map),
      KM_NOFS);
  if (!map)
   return -ENOMEM;
  *mapp = map;
 }

 *nmaps = nirecs;
 map = *mapp;
 for (i = 0; i < *nmaps; i++) {
  ASSERT(irecs[i].br_startblock != DELAYSTARTBLOCK &&
         irecs[i].br_startblock != HOLESTARTBLOCK);
  map[i].bm_bn = XFS_FSB_TO_DADDR(mp, irecs[i].br_startblock);
  map[i].bm_len = XFS_FSB_TO_BB(mp, irecs[i].br_blockcount);
 }
 return 0;
}
