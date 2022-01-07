
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
typedef int __le64 ;


 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_set_nchildren (struct nilfs_btree_node*,int) ;

__attribute__((used)) static void nilfs_btree_node_move_left(struct nilfs_btree_node *left,
           struct nilfs_btree_node *right,
           int n, int lncmax, int rncmax)
{
 __le64 *ldkeys, *rdkeys;
 __le64 *ldptrs, *rdptrs;
 int lnchildren, rnchildren;

 ldkeys = nilfs_btree_node_dkeys(left);
 ldptrs = nilfs_btree_node_dptrs(left, lncmax);
 lnchildren = nilfs_btree_node_get_nchildren(left);

 rdkeys = nilfs_btree_node_dkeys(right);
 rdptrs = nilfs_btree_node_dptrs(right, rncmax);
 rnchildren = nilfs_btree_node_get_nchildren(right);

 memcpy(ldkeys + lnchildren, rdkeys, n * sizeof(*rdkeys));
 memcpy(ldptrs + lnchildren, rdptrs, n * sizeof(*rdptrs));
 memmove(rdkeys, rdkeys + n, (rnchildren - n) * sizeof(*rdkeys));
 memmove(rdptrs, rdptrs + n, (rnchildren - n) * sizeof(*rdptrs));

 lnchildren += n;
 rnchildren -= n;
 nilfs_btree_node_set_nchildren(left, lnchildren);
 nilfs_btree_node_set_nchildren(right, rnchildren);
}
