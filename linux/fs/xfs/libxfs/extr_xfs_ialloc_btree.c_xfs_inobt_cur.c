
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_btnum_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int ASSERT (int ) ;
 int ENOMEM ;
 int xfs_ialloc_read_agi (struct xfs_mount*,struct xfs_trans*,int ,struct xfs_buf**) ;
 struct xfs_btree_cur* xfs_inobt_init_cursor (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,int ,int ) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_inobt_cur(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 xfs_btnum_t which,
 struct xfs_btree_cur **curpp,
 struct xfs_buf **agi_bpp)
{
 struct xfs_btree_cur *cur;
 int error;

 ASSERT(*agi_bpp == ((void*)0));
 ASSERT(*curpp == ((void*)0));

 error = xfs_ialloc_read_agi(mp, tp, agno, agi_bpp);
 if (error)
  return error;

 cur = xfs_inobt_init_cursor(mp, tp, *agi_bpp, agno, which);
 if (!cur) {
  xfs_trans_brelse(tp, *agi_bpp);
  *agi_bpp = ((void*)0);
  return -ENOMEM;
 }
 *curpp = cur;
 return 0;
}
