
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int extent_lock; int extent_list; } ;
struct extent_tree {struct extent_node* cached_en; } ;
struct extent_info {scalar_t__ len; int blk; int fofs; } ;
struct extent_node {int list; struct extent_info ei; } ;


 scalar_t__ __is_back_mergeable (struct extent_info*,struct extent_info*) ;
 scalar_t__ __is_front_mergeable (struct extent_info*,struct extent_info*) ;
 int __release_extent_node (struct f2fs_sb_info*,struct extent_tree*,struct extent_node*) ;
 int __try_update_largest_extent (struct extent_tree*,struct extent_node*) ;
 int list_empty (int *) ;
 int list_move_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct extent_node *__try_merge_extent_node(struct f2fs_sb_info *sbi,
    struct extent_tree *et, struct extent_info *ei,
    struct extent_node *prev_ex,
    struct extent_node *next_ex)
{
 struct extent_node *en = ((void*)0);

 if (prev_ex && __is_back_mergeable(ei, &prev_ex->ei)) {
  prev_ex->ei.len += ei->len;
  ei = &prev_ex->ei;
  en = prev_ex;
 }

 if (next_ex && __is_front_mergeable(ei, &next_ex->ei)) {
  next_ex->ei.fofs = ei->fofs;
  next_ex->ei.blk = ei->blk;
  next_ex->ei.len += ei->len;
  if (en)
   __release_extent_node(sbi, et, prev_ex);

  en = next_ex;
 }

 if (!en)
  return ((void*)0);

 __try_update_largest_extent(et, en);

 spin_lock(&sbi->extent_lock);
 if (!list_empty(&en->list)) {
  list_move_tail(&en->list, &sbi->extent_list);
  et->cached_en = en;
 }
 spin_unlock(&sbi->extent_lock);
 return en;
}
