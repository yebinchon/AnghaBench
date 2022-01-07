
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap_stats {int bs_nblocks; } ;
struct nilfs_bmap {int b_inode; } ;
struct inode {int dummy; } ;
typedef int __u64 ;


 int ENOMEM ;
 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 struct nilfs_btree_path* nilfs_btree_alloc_path () ;
 int nilfs_btree_commit_delete (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ;
 int nilfs_btree_do_lookup (struct nilfs_bmap*,struct nilfs_btree_path*,int ,int *,int ,int ) ;
 int nilfs_btree_free_path (struct nilfs_btree_path*) ;
 int nilfs_btree_prepare_delete (struct nilfs_bmap*,struct nilfs_btree_path*,int*,struct nilfs_bmap_stats*,struct inode*) ;
 int nilfs_inode_sub_blocks (int ,int ) ;

__attribute__((used)) static int nilfs_btree_delete(struct nilfs_bmap *btree, __u64 key)

{
 struct nilfs_btree_path *path;
 struct nilfs_bmap_stats stats;
 struct inode *dat;
 int level, ret;

 path = nilfs_btree_alloc_path();
 if (path == ((void*)0))
  return -ENOMEM;

 ret = nilfs_btree_do_lookup(btree, path, key, ((void*)0),
        NILFS_BTREE_LEVEL_NODE_MIN, 0);
 if (ret < 0)
  goto out;


 dat = NILFS_BMAP_USE_VBN(btree) ? nilfs_bmap_get_dat(btree) : ((void*)0);

 ret = nilfs_btree_prepare_delete(btree, path, &level, &stats, dat);
 if (ret < 0)
  goto out;
 nilfs_btree_commit_delete(btree, path, level, dat);
 nilfs_inode_sub_blocks(btree->b_inode, stats.bs_nblocks);

out:
 nilfs_btree_free_path(path);
 return ret;
}
