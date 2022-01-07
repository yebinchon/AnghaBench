
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_rmap_query_range_fn ;
struct xfs_rmap_query_range_info {int fn; void* priv; } ;
struct xfs_btree_cur {int dummy; } ;


 int xfs_btree_query_all (struct xfs_btree_cur*,int ,struct xfs_rmap_query_range_info*) ;
 int xfs_rmap_query_range_helper ;

int
xfs_rmap_query_all(
 struct xfs_btree_cur *cur,
 xfs_rmap_query_range_fn fn,
 void *priv)
{
 struct xfs_rmap_query_range_info query;

 query.priv = priv;
 query.fn = fn;
 return xfs_btree_query_all(cur, xfs_rmap_query_range_helper, &query);
}
