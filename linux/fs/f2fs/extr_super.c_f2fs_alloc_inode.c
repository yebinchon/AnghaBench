
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_inode_info {struct inode vfs_inode; int i_dir_level; int i_xattr_sem; int i_mmap_sem; int * i_gc_rwsem; int inmem_lock; int inmem_pages; int inmem_ilist; int gdirty_list; int dirty_list; int i_sem; int dirty_pages; } ;
struct TYPE_2__ {int dir_level; } ;


 TYPE_1__* F2FS_SB (struct super_block*) ;
 int GFP_F2FS_ZERO ;
 int INIT_LIST_HEAD (int *) ;
 size_t READ ;
 size_t WRITE ;
 int atomic_set (int *,int ) ;
 int f2fs_inode_cachep ;
 int init_once (void*) ;
 int init_rwsem (int *) ;
 struct f2fs_inode_info* kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct inode *f2fs_alloc_inode(struct super_block *sb)
{
 struct f2fs_inode_info *fi;

 fi = kmem_cache_alloc(f2fs_inode_cachep, GFP_F2FS_ZERO);
 if (!fi)
  return ((void*)0);

 init_once((void *) fi);


 atomic_set(&fi->dirty_pages, 0);
 init_rwsem(&fi->i_sem);
 INIT_LIST_HEAD(&fi->dirty_list);
 INIT_LIST_HEAD(&fi->gdirty_list);
 INIT_LIST_HEAD(&fi->inmem_ilist);
 INIT_LIST_HEAD(&fi->inmem_pages);
 mutex_init(&fi->inmem_lock);
 init_rwsem(&fi->i_gc_rwsem[READ]);
 init_rwsem(&fi->i_gc_rwsem[WRITE]);
 init_rwsem(&fi->i_mmap_sem);
 init_rwsem(&fi->i_xattr_sem);


 fi->i_dir_level = F2FS_SB(sb)->dir_level;

 return &fi->vfs_inode;
}
