
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap_stats {int bs_nblocks; } ;
struct nilfs_bmap {int b_inode; } ;
typedef int __u64 ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 struct nilfs_btree_path* nilfs_btree_alloc_path () ;
 int nilfs_btree_commit_insert (struct nilfs_bmap*,struct nilfs_btree_path*,int,int ,int ) ;
 int nilfs_btree_do_lookup (struct nilfs_bmap*,struct nilfs_btree_path*,int ,int *,int ,int ) ;
 int nilfs_btree_free_path (struct nilfs_btree_path*) ;
 int nilfs_btree_prepare_insert (struct nilfs_bmap*,struct nilfs_btree_path*,int*,int ,int ,struct nilfs_bmap_stats*) ;
 int nilfs_inode_add_blocks (int ,int ) ;

__attribute__((used)) static int nilfs_btree_insert(struct nilfs_bmap *btree, __u64 key, __u64 ptr)
{
 struct nilfs_btree_path *path;
 struct nilfs_bmap_stats stats;
 int level, ret;

 path = nilfs_btree_alloc_path();
 if (path == ((void*)0))
  return -ENOMEM;

 ret = nilfs_btree_do_lookup(btree, path, key, ((void*)0),
        NILFS_BTREE_LEVEL_NODE_MIN, 0);
 if (ret != -ENOENT) {
  if (ret == 0)
   ret = -EEXIST;
  goto out;
 }

 ret = nilfs_btree_prepare_insert(btree, path, &level, key, ptr, &stats);
 if (ret < 0)
  goto out;
 nilfs_btree_commit_insert(btree, path, level, key, ptr);
 nilfs_inode_add_blocks(btree->b_inode, stats.bs_nblocks);

 out:
 nilfs_btree_free_path(path);
 return ret;
}
