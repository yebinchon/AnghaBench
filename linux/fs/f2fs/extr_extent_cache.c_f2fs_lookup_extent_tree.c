
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_entry {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int extent_lock; int extent_list; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ len; } ;
struct extent_tree {int lock; struct extent_node* cached_en; int root; struct extent_info largest; } ;
struct extent_node {int list; struct extent_info ei; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ f2fs_lookup_rb_tree (int *,struct rb_entry*,scalar_t__) ;
 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_inc_cached_node_hit (struct f2fs_sb_info*) ;
 int stat_inc_largest_node_hit (struct f2fs_sb_info*) ;
 int stat_inc_rbtree_node_hit (struct f2fs_sb_info*) ;
 int stat_inc_total_hit (struct f2fs_sb_info*) ;
 int trace_f2fs_lookup_extent_tree_end (struct inode*,scalar_t__,struct extent_info*) ;
 int trace_f2fs_lookup_extent_tree_start (struct inode*,scalar_t__) ;

__attribute__((used)) static bool f2fs_lookup_extent_tree(struct inode *inode, pgoff_t pgofs,
       struct extent_info *ei)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et = F2FS_I(inode)->extent_tree;
 struct extent_node *en;
 bool ret = 0;

 f2fs_bug_on(sbi, !et);

 trace_f2fs_lookup_extent_tree_start(inode, pgofs);

 read_lock(&et->lock);

 if (et->largest.fofs <= pgofs &&
   et->largest.fofs + et->largest.len > pgofs) {
  *ei = et->largest;
  ret = 1;
  stat_inc_largest_node_hit(sbi);
  goto out;
 }

 en = (struct extent_node *)f2fs_lookup_rb_tree(&et->root,
    (struct rb_entry *)et->cached_en, pgofs);
 if (!en)
  goto out;

 if (en == et->cached_en)
  stat_inc_cached_node_hit(sbi);
 else
  stat_inc_rbtree_node_hit(sbi);

 *ei = en->ei;
 spin_lock(&sbi->extent_lock);
 if (!list_empty(&en->list)) {
  list_move_tail(&en->list, &sbi->extent_list);
  et->cached_en = en;
 }
 spin_unlock(&sbi->extent_lock);
 ret = 1;
out:
 stat_inc_total_hit(sbi);
 read_unlock(&et->lock);

 trace_f2fs_lookup_extent_tree_end(inode, pgofs, ei);
 return ret;
}
