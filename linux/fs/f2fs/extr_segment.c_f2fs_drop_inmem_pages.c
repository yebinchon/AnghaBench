
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int * inode_lock; } ;
struct f2fs_inode_info {int inmem_ilist; scalar_t__* i_gc_failures; int inmem_lock; int inmem_pages; } ;


 size_t ATOMIC_FILE ;
 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_ATOMIC_FILE ;
 size_t GC_FAILURE_ATOMIC ;
 int __revoke_inmem_pages (struct inode*,int *,int,int,int) ;
 int clear_inode_flag (struct inode*,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_dec_atomic_write (struct inode*) ;

void f2fs_drop_inmem_pages(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct f2fs_inode_info *fi = F2FS_I(inode);

 while (!list_empty(&fi->inmem_pages)) {
  mutex_lock(&fi->inmem_lock);
  __revoke_inmem_pages(inode, &fi->inmem_pages,
      1, 0, 1);
  mutex_unlock(&fi->inmem_lock);
 }

 clear_inode_flag(inode, FI_ATOMIC_FILE);
 fi->i_gc_failures[GC_FAILURE_ATOMIC] = 0;
 stat_dec_atomic_write(inode);

 spin_lock(&sbi->inode_lock[ATOMIC_FILE]);
 if (!list_empty(&fi->inmem_ilist))
  list_del_init(&fi->inmem_ilist);
 spin_unlock(&sbi->inode_lock[ATOMIC_FILE]);
}
