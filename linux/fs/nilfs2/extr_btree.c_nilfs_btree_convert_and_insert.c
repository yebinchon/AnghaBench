
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nilfs_bmap_ptr_req {int dummy; } nilfs_bmap_ptr_req ;
struct nilfs_bmap_stats {int bs_nblocks; } ;
struct nilfs_bmap {int b_inode; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int BUG () ;
 int NILFS_BTREE_NODE_NCHILDREN_MAX (int ) ;
 int NILFS_BTREE_ROOT_NCHILDREN_MAX ;
 int nilfs_btree_commit_convert_and_insert (struct nilfs_bmap*,int ,int ,int const*,int const*,int,union nilfs_bmap_ptr_req*,union nilfs_bmap_ptr_req*,struct buffer_head*) ;
 int nilfs_btree_node_size (struct nilfs_bmap*) ;
 int nilfs_btree_prepare_convert_and_insert (struct nilfs_bmap*,int ,union nilfs_bmap_ptr_req*,union nilfs_bmap_ptr_req*,struct buffer_head**,struct nilfs_bmap_stats*) ;
 int nilfs_inode_add_blocks (int ,int ) ;

int nilfs_btree_convert_and_insert(struct nilfs_bmap *btree,
       __u64 key, __u64 ptr,
       const __u64 *keys, const __u64 *ptrs, int n)
{
 struct buffer_head *bh = ((void*)0);
 union nilfs_bmap_ptr_req dreq, nreq, *di, *ni;
 struct nilfs_bmap_stats stats;
 int ret;

 if (n + 1 <= NILFS_BTREE_ROOT_NCHILDREN_MAX) {
  di = &dreq;
  ni = ((void*)0);
 } else if ((n + 1) <= NILFS_BTREE_NODE_NCHILDREN_MAX(
      nilfs_btree_node_size(btree))) {
  di = &dreq;
  ni = &nreq;
 } else {
  di = ((void*)0);
  ni = ((void*)0);
  BUG();
 }

 ret = nilfs_btree_prepare_convert_and_insert(btree, key, di, ni, &bh,
           &stats);
 if (ret < 0)
  return ret;
 nilfs_btree_commit_convert_and_insert(btree, key, ptr, keys, ptrs, n,
           di, ni, bh);
 nilfs_inode_add_blocks(btree->b_inode, stats.bs_nblocks);
 return 0;
}
