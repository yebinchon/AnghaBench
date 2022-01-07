
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_btree_path {int bp_bh; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;


 int buffer_dirty (int ) ;
 int mark_buffer_dirty (int ) ;
 int nilfs_btree_height (struct nilfs_bmap*) ;

__attribute__((used)) static int nilfs_btree_propagate_p(struct nilfs_bmap *btree,
       struct nilfs_btree_path *path,
       int level,
       struct buffer_head *bh)
{
 while ((++level < nilfs_btree_height(btree) - 1) &&
        !buffer_dirty(path[level].bp_bh))
  mark_buffer_dirty(path[level].bp_bh);

 return 0;
}
