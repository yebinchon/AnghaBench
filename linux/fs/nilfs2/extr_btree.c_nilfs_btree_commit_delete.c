
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int (* bp_op ) (struct nilfs_bmap*,struct nilfs_btree_path*,int,int *,int *) ;int bp_oldreq; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;


 int NILFS_BTREE_LEVEL_NODE_MIN ;
 int nilfs_bmap_commit_end_ptr (struct nilfs_bmap*,int *,struct inode*) ;
 int nilfs_bmap_dirty (struct nilfs_bmap*) ;
 int nilfs_bmap_set_dirty (struct nilfs_bmap*) ;
 int stub1 (struct nilfs_bmap*,struct nilfs_btree_path*,int,int *,int *) ;

__attribute__((used)) static void nilfs_btree_commit_delete(struct nilfs_bmap *btree,
          struct nilfs_btree_path *path,
          int maxlevel, struct inode *dat)
{
 int level;

 for (level = NILFS_BTREE_LEVEL_NODE_MIN; level <= maxlevel; level++) {
  nilfs_bmap_commit_end_ptr(btree, &path[level].bp_oldreq, dat);
  path[level].bp_op(btree, path, level, ((void*)0), ((void*)0));
 }

 if (!nilfs_bmap_dirty(btree))
  nilfs_bmap_set_dirty(btree);
}
