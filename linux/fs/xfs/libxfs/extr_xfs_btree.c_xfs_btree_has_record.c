
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xfs_btree_irec {int dummy; } xfs_btree_irec ;
struct xfs_btree_cur {int dummy; } ;


 int ECANCELED ;
 int xfs_btree_has_record_helper ;
 int xfs_btree_query_range (struct xfs_btree_cur*,union xfs_btree_irec*,union xfs_btree_irec*,int *,int *) ;

int
xfs_btree_has_record(
 struct xfs_btree_cur *cur,
 union xfs_btree_irec *low,
 union xfs_btree_irec *high,
 bool *exists)
{
 int error;

 error = xfs_btree_query_range(cur, low, high,
   &xfs_btree_has_record_helper, ((void*)0));
 if (error == -ECANCELED) {
  *exists = 1;
  return 0;
 }
 *exists = 0;
 return error;
}
