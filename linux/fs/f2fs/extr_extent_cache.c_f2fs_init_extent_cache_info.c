
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_ext_node; int total_zombie_tree; int zombie_list; int total_ext_tree; int extent_lock; int extent_list; int extent_tree_lock; int extent_tree_root; } ;


 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void f2fs_init_extent_cache_info(struct f2fs_sb_info *sbi)
{
 INIT_RADIX_TREE(&sbi->extent_tree_root, GFP_NOIO);
 mutex_init(&sbi->extent_tree_lock);
 INIT_LIST_HEAD(&sbi->extent_list);
 spin_lock_init(&sbi->extent_lock);
 atomic_set(&sbi->total_ext_tree, 0);
 INIT_LIST_HEAD(&sbi->zombie_list);
 atomic_set(&sbi->total_zombie_tree, 0);
 atomic_set(&sbi->total_ext_node, 0);
}
