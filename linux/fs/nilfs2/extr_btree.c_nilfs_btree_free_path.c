
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_bh; } ;


 int NILFS_BTREE_LEVEL_DATA ;
 int NILFS_BTREE_LEVEL_MAX ;
 int brelse (int ) ;
 int kmem_cache_free (int ,struct nilfs_btree_path*) ;
 int nilfs_btree_path_cache ;

__attribute__((used)) static void nilfs_btree_free_path(struct nilfs_btree_path *path)
{
 int level = NILFS_BTREE_LEVEL_DATA;

 for (; level < NILFS_BTREE_LEVEL_MAX; level++)
  brelse(path[level].bp_bh);

 kmem_cache_free(nilfs_btree_path_cache, path);
}
