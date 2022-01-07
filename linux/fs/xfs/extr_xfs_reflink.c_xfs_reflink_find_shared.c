
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;


 int ENOMEM ;
 int xfs_alloc_read_agf (struct xfs_mount*,struct xfs_trans*,int ,int ,struct xfs_buf**) ;
 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;
 int xfs_refcount_find_shared (struct xfs_btree_cur*,int ,int ,int *,int *,int) ;
 struct xfs_btree_cur* xfs_refcountbt_init_cursor (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,int ) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
xfs_reflink_find_shared(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 xfs_agblock_t agbno,
 xfs_extlen_t aglen,
 xfs_agblock_t *fbno,
 xfs_extlen_t *flen,
 bool find_end_of_shared)
{
 struct xfs_buf *agbp;
 struct xfs_btree_cur *cur;
 int error;

 error = xfs_alloc_read_agf(mp, tp, agno, 0, &agbp);
 if (error)
  return error;
 if (!agbp)
  return -ENOMEM;

 cur = xfs_refcountbt_init_cursor(mp, tp, agbp, agno);

 error = xfs_refcount_find_shared(cur, agbno, aglen, fbno, flen,
   find_end_of_shared);

 xfs_btree_del_cursor(cur, error);

 xfs_trans_brelse(tp, agbp);
 return error;
}
