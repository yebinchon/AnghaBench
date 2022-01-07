
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct f2fs_sb_info {int extent_lock; int extent_list; } ;
struct extent_tree {struct extent_node* cached_en; int root; } ;
struct extent_node {int list; } ;
struct extent_info {int fofs; } ;


 struct extent_node* __attach_extent_node (struct f2fs_sb_info*,struct extent_tree*,struct extent_info*,struct rb_node*,struct rb_node**,int) ;
 int __try_update_largest_extent (struct extent_tree*,struct extent_node*) ;
 struct rb_node** f2fs_lookup_rb_tree_for_insert (struct f2fs_sb_info*,int *,struct rb_node**,int ,int*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct extent_node *__insert_extent_tree(struct f2fs_sb_info *sbi,
    struct extent_tree *et, struct extent_info *ei,
    struct rb_node **insert_p,
    struct rb_node *insert_parent,
    bool leftmost)
{
 struct rb_node **p;
 struct rb_node *parent = ((void*)0);
 struct extent_node *en = ((void*)0);

 if (insert_p && insert_parent) {
  parent = insert_parent;
  p = insert_p;
  goto do_insert;
 }

 leftmost = 1;

 p = f2fs_lookup_rb_tree_for_insert(sbi, &et->root, &parent,
      ei->fofs, &leftmost);
do_insert:
 en = __attach_extent_node(sbi, et, ei, parent, p, leftmost);
 if (!en)
  return ((void*)0);

 __try_update_largest_extent(et, en);


 spin_lock(&sbi->extent_lock);
 list_add_tail(&en->list, &sbi->extent_list);
 et->cached_en = en;
 spin_unlock(&sbi->extent_lock);
 return en;
}
