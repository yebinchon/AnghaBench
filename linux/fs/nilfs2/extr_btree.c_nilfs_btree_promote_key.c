
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {scalar_t__ bp_index; int bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int buffer_dirty (int ) ;
 int mark_buffer_dirty (int ) ;
 int nilfs_btree_get_nonroot_node (struct nilfs_btree_path*,int) ;
 int nilfs_btree_get_root (struct nilfs_bmap*) ;
 int nilfs_btree_height (struct nilfs_bmap*) ;
 int nilfs_btree_node_set_key (int ,scalar_t__,int ) ;

__attribute__((used)) static void nilfs_btree_promote_key(struct nilfs_bmap *btree,
        struct nilfs_btree_path *path,
        int level, __u64 key)
{
 if (level < nilfs_btree_height(btree) - 1) {
  do {
   nilfs_btree_node_set_key(
    nilfs_btree_get_nonroot_node(path, level),
    path[level].bp_index, key);
   if (!buffer_dirty(path[level].bp_bh))
    mark_buffer_dirty(path[level].bp_bh);
  } while ((path[level].bp_index == 0) &&
    (++level < nilfs_btree_height(btree) - 1));
 }


 if (level == nilfs_btree_height(btree) - 1) {
  nilfs_btree_node_set_key(nilfs_btree_get_root(btree),
      path[level].bp_index, key);
 }
}
