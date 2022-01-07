
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;


 int WARN_ON (int ) ;
 int buffer_dirty (int ) ;
 int buffer_nilfs_volatile (int ) ;
 int nilfs_btree_abort_update_v (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ;
 int nilfs_btree_height (struct nilfs_bmap*) ;
 int nilfs_btree_prepare_update_v (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct inode*) ;

__attribute__((used)) static int nilfs_btree_prepare_propagate_v(struct nilfs_bmap *btree,
        struct nilfs_btree_path *path,
        int minlevel, int *maxlevelp,
        struct inode *dat)
{
 int level, ret;

 level = minlevel;
 if (!buffer_nilfs_volatile(path[level].bp_bh)) {
  ret = nilfs_btree_prepare_update_v(btree, path, level, dat);
  if (ret < 0)
   return ret;
 }
 while ((++level < nilfs_btree_height(btree) - 1) &&
        !buffer_dirty(path[level].bp_bh)) {

  WARN_ON(buffer_nilfs_volatile(path[level].bp_bh));
  ret = nilfs_btree_prepare_update_v(btree, path, level, dat);
  if (ret < 0)
   goto out;
 }


 *maxlevelp = level - 1;
 return 0;


 out:
 while (--level > minlevel)
  nilfs_btree_abort_update_v(btree, path, level, dat);
 if (!buffer_nilfs_volatile(path[level].bp_bh))
  nilfs_btree_abort_update_v(btree, path, level, dat);
 return ret;
}
