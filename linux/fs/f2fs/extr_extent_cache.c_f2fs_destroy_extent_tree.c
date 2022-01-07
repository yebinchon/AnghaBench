
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; scalar_t__ i_nlink; } ;
struct f2fs_sb_info {int extent_tree_lock; int total_ext_tree; int extent_tree_root; int total_zombie_tree; int zombie_list; } ;
struct extent_tree {int node_cnt; int list; } ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int extent_tree_slab ;
 int f2fs_bug_on (struct f2fs_sb_info*,scalar_t__) ;
 unsigned int f2fs_destroy_extent_node (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int kmem_cache_free (int ,struct extent_tree*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_delete (int *,int ) ;
 int trace_f2fs_destroy_extent_tree (struct inode*,unsigned int) ;

void f2fs_destroy_extent_tree(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et = F2FS_I(inode)->extent_tree;
 unsigned int node_cnt = 0;

 if (!et)
  return;

 if (inode->i_nlink && !is_bad_inode(inode) &&
     atomic_read(&et->node_cnt)) {
  mutex_lock(&sbi->extent_tree_lock);
  list_add_tail(&et->list, &sbi->zombie_list);
  atomic_inc(&sbi->total_zombie_tree);
  mutex_unlock(&sbi->extent_tree_lock);
  return;
 }


 node_cnt = f2fs_destroy_extent_node(inode);


 mutex_lock(&sbi->extent_tree_lock);
 f2fs_bug_on(sbi, atomic_read(&et->node_cnt));
 radix_tree_delete(&sbi->extent_tree_root, inode->i_ino);
 kmem_cache_free(extent_tree_slab, et);
 atomic_dec(&sbi->total_ext_tree);
 mutex_unlock(&sbi->extent_tree_lock);

 F2FS_I(inode)->extent_tree = ((void*)0);

 trace_f2fs_destroy_extent_tree(inode, node_cnt);
}
