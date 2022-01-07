
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __u64 ;
typedef int __le64 ;


 int EINVAL ;
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int le64_to_cpu (int ) ;
 int nilfs_btree_get_block (struct nilfs_bmap*,int ,struct buffer_head**) ;
 struct nilfs_btree_node* nilfs_btree_get_root (struct nilfs_bmap*) ;
 int nilfs_btree_height (struct nilfs_bmap*) ;
 int nilfs_btree_nchildren_per_block (struct nilfs_bmap*) ;
 int * nilfs_btree_node_dkeys (struct nilfs_btree_node*) ;
 int * nilfs_btree_node_dptrs (struct nilfs_btree_node*,int) ;
 int nilfs_btree_node_get_nchildren (struct nilfs_btree_node*) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,int,int) ;

__attribute__((used)) static int nilfs_btree_gather_data(struct nilfs_bmap *btree,
       __u64 *keys, __u64 *ptrs, int nitems)
{
 struct buffer_head *bh;
 struct nilfs_btree_node *node, *root;
 __le64 *dkeys;
 __le64 *dptrs;
 __u64 ptr;
 int nchildren, ncmax, i, ret;

 root = nilfs_btree_get_root(btree);
 switch (nilfs_btree_height(btree)) {
 case 2:
  bh = ((void*)0);
  node = root;
  ncmax = NILFS_BTREE_ROOT_NCHILDREN_MAX;
  break;
 case 3:
  nchildren = nilfs_btree_node_get_nchildren(root);
  WARN_ON(nchildren > 1);
  ptr = nilfs_btree_node_get_ptr(root, nchildren - 1,
            NILFS_BTREE_ROOT_NCHILDREN_MAX);
  ret = nilfs_btree_get_block(btree, ptr, &bh);
  if (ret < 0)
   return ret;
  node = (struct nilfs_btree_node *)bh->b_data;
  ncmax = nilfs_btree_nchildren_per_block(btree);
  break;
 default:
  node = ((void*)0);
  return -EINVAL;
 }

 nchildren = nilfs_btree_node_get_nchildren(node);
 if (nchildren < nitems)
  nitems = nchildren;
 dkeys = nilfs_btree_node_dkeys(node);
 dptrs = nilfs_btree_node_dptrs(node, ncmax);
 for (i = 0; i < nitems; i++) {
  keys[i] = le64_to_cpu(dkeys[i]);
  ptrs[i] = le64_to_cpu(dptrs[i]);
 }

 if (bh != ((void*)0))
  brelse(bh);

 return nitems;
}
