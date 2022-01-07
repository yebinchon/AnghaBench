
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_alloc_query_range_fn ;
struct xfs_btree_cur {scalar_t__ bc_btnum; } ;
struct xfs_alloc_query_range_info {int fn; void* priv; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_BTNUM_BNO ;
 int xfs_alloc_query_range_helper ;
 int xfs_btree_query_all (struct xfs_btree_cur*,int ,struct xfs_alloc_query_range_info*) ;

int
xfs_alloc_query_all(
 struct xfs_btree_cur *cur,
 xfs_alloc_query_range_fn fn,
 void *priv)
{
 struct xfs_alloc_query_range_info query;

 ASSERT(cur->bc_btnum == XFS_BTNUM_BNO);
 query.priv = priv;
 query.fn = fn;
 return xfs_btree_query_all(cur, xfs_alloc_query_range_helper, &query);
}
