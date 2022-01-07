
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {int ino_lock; int ino_num; int ino_list; int ino_root; } ;
struct ino_entry {int dirty_device; int list; int ino; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef int nid_t ;


 int FLUSH_INO ;
 int GFP_NOFS ;
 int ORPHAN_INO ;
 int __GFP_NOFAIL ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 struct ino_entry* f2fs_kmem_cache_alloc (int ,int) ;
 int f2fs_set_bit (unsigned int,char*) ;
 int ino_entry_slab ;
 int kmem_cache_free (int ,struct ino_entry*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct ino_entry*,int ,int) ;
 int radix_tree_insert (int *,int ,struct ino_entry*) ;
 struct ino_entry* radix_tree_lookup (int *,int ) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __add_ino_entry(struct f2fs_sb_info *sbi, nid_t ino,
      unsigned int devidx, int type)
{
 struct inode_management *im = &sbi->im[type];
 struct ino_entry *e, *tmp;

 tmp = f2fs_kmem_cache_alloc(ino_entry_slab, GFP_NOFS);

 radix_tree_preload(GFP_NOFS | __GFP_NOFAIL);

 spin_lock(&im->ino_lock);
 e = radix_tree_lookup(&im->ino_root, ino);
 if (!e) {
  e = tmp;
  if (unlikely(radix_tree_insert(&im->ino_root, ino, e)))
   f2fs_bug_on(sbi, 1);

  memset(e, 0, sizeof(struct ino_entry));
  e->ino = ino;

  list_add_tail(&e->list, &im->ino_list);
  if (type != ORPHAN_INO)
   im->ino_num++;
 }

 if (type == FLUSH_INO)
  f2fs_set_bit(devidx, (char *)&e->dirty_device);

 spin_unlock(&im->ino_lock);
 radix_tree_preload_end();

 if (e != tmp)
  kmem_cache_free(ino_entry_slab, tmp);
}
