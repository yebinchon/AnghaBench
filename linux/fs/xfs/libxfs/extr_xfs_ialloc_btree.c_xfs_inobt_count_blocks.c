
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_btnum_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int xfs_btree_count_blocks (struct xfs_btree_cur*,int *) ;
 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;
 int xfs_inobt_cur (struct xfs_mount*,struct xfs_trans*,int ,int ,struct xfs_btree_cur**,struct xfs_buf**) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_inobt_count_blocks(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 xfs_btnum_t btnum,
 xfs_extlen_t *tree_blocks)
{
 struct xfs_buf *agbp = ((void*)0);
 struct xfs_btree_cur *cur = ((void*)0);
 int error;

 error = xfs_inobt_cur(mp, tp, agno, btnum, &cur, &agbp);
 if (error)
  return error;

 error = xfs_btree_count_blocks(cur, tree_blocks);
 xfs_btree_del_cursor(cur, error);
 xfs_trans_brelse(tp, agbp);

 return error;
}
