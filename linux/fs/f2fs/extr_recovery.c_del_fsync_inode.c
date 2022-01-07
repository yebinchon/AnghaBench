
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsync_inode_entry {int list; int inode; } ;


 int f2fs_inode_synced (int ) ;
 int fsync_entry_slab ;
 int iput (int ) ;
 int kmem_cache_free (int ,struct fsync_inode_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static void del_fsync_inode(struct fsync_inode_entry *entry, int drop)
{
 if (drop) {

  f2fs_inode_synced(entry->inode);
 }
 iput(entry->inode);
 list_del(&entry->list);
 kmem_cache_free(fsync_entry_slab, entry);
}
