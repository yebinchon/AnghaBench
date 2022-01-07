
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int buffer_nilfs_volatile (int ) ;
 int nilfs_btree_commit_update_v (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ;

__attribute__((used)) static void nilfs_btree_commit_propagate_v(struct nilfs_bmap *btree,
        struct nilfs_btree_path *path,
        int minlevel, int maxlevel,
        struct buffer_head *bh,
        struct inode *dat)
{
 int level;

 if (!buffer_nilfs_volatile(path[minlevel].bp_bh))
  nilfs_btree_commit_update_v(btree, path, minlevel, dat);

 for (level = minlevel + 1; level <= maxlevel; level++)
  nilfs_btree_commit_update_v(btree, path, level, dat);
}
