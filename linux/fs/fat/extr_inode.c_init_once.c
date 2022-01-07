
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_inode_info {int vfs_inode; int i_dir_hash; int i_fat_hash; int cache_lru; scalar_t__ cache_valid_id; scalar_t__ nr_caches; int cache_lru_lock; } ;


 scalar_t__ FAT_CACHE_VALID ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int inode_init_once (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct msdos_inode_info *ei = (struct msdos_inode_info *)foo;

 spin_lock_init(&ei->cache_lru_lock);
 ei->nr_caches = 0;
 ei->cache_valid_id = FAT_CACHE_VALID + 1;
 INIT_LIST_HEAD(&ei->cache_lru);
 INIT_HLIST_NODE(&ei->i_fat_hash);
 INIT_HLIST_NODE(&ei->i_dir_hash);
 inode_init_once(&ei->vfs_inode);
}
