
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct f2fs_sb_info {int extent_tree_lock; int total_zombie_tree; int total_ext_tree; int extent_tree_root; } ;
struct extent_tree {int list; int node_cnt; int lock; int * cached_en; int root; int ino; } ;
typedef int nid_t ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int extent_tree_slab ;
 struct extent_tree* f2fs_kmem_cache_alloc (int ,int ) ;
 int f2fs_radix_tree_insert (int *,int ,struct extent_tree*) ;
 int list_del_init (int *) ;
 int memset (struct extent_tree*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct extent_tree* radix_tree_lookup (int *,int ) ;
 int rwlock_init (int *) ;

__attribute__((used)) static struct extent_tree *__grab_extent_tree(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct extent_tree *et;
 nid_t ino = inode->i_ino;

 mutex_lock(&sbi->extent_tree_lock);
 et = radix_tree_lookup(&sbi->extent_tree_root, ino);
 if (!et) {
  et = f2fs_kmem_cache_alloc(extent_tree_slab, GFP_NOFS);
  f2fs_radix_tree_insert(&sbi->extent_tree_root, ino, et);
  memset(et, 0, sizeof(struct extent_tree));
  et->ino = ino;
  et->root = RB_ROOT_CACHED;
  et->cached_en = ((void*)0);
  rwlock_init(&et->lock);
  INIT_LIST_HEAD(&et->list);
  atomic_set(&et->node_cnt, 0);
  atomic_inc(&sbi->total_ext_tree);
 } else {
  atomic_dec(&sbi->total_zombie_tree);
  list_del_init(&et->list);
 }
 mutex_unlock(&sbi->extent_tree_lock);


 F2FS_I(inode)->extent_tree = et;

 return et;
}
