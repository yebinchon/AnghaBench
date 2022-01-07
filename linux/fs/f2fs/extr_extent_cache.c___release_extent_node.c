
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int extent_lock; } ;
struct extent_tree {int dummy; } ;
struct extent_node {int list; } ;


 int __detach_extent_node (struct f2fs_sb_info*,struct extent_tree*,struct extent_node*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __release_extent_node(struct f2fs_sb_info *sbi,
   struct extent_tree *et, struct extent_node *en)
{
 spin_lock(&sbi->extent_lock);
 f2fs_bug_on(sbi, list_empty(&en->list));
 list_del_init(&en->list);
 spin_unlock(&sbi->extent_lock);

 __detach_extent_node(sbi, et, en);
}
