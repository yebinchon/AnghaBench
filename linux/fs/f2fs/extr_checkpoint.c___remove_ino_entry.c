
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {int ino_lock; int ino_num; int ino_root; } ;
struct ino_entry {int list; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef int nid_t ;


 int ino_entry_slab ;
 int kmem_cache_free (int ,struct ino_entry*) ;
 int list_del (int *) ;
 int radix_tree_delete (int *,int ) ;
 struct ino_entry* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __remove_ino_entry(struct f2fs_sb_info *sbi, nid_t ino, int type)
{
 struct inode_management *im = &sbi->im[type];
 struct ino_entry *e;

 spin_lock(&im->ino_lock);
 e = radix_tree_lookup(&im->ino_root, ino);
 if (e) {
  list_del(&e->list);
  radix_tree_delete(&im->ino_root, ino);
  im->ino_num--;
  spin_unlock(&im->ino_lock);
  kmem_cache_free(ino_entry_slab, e);
  return;
 }
 spin_unlock(&im->ino_lock);
}
