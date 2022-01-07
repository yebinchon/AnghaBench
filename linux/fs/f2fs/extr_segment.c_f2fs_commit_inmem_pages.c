
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode_info {int * i_gc_rwsem; int inmem_lock; } ;


 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_ATOMIC_COMMIT ;
 size_t WRITE ;
 int __f2fs_commit_inmem_pages (struct inode*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int down_write (int *) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_inode_flag (struct inode*,int ) ;
 int up_write (int *) ;

int f2fs_commit_inmem_pages(struct inode *inode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct f2fs_inode_info *fi = F2FS_I(inode);
 int err;

 f2fs_balance_fs(sbi, 1);

 down_write(&fi->i_gc_rwsem[WRITE]);

 f2fs_lock_op(sbi);
 set_inode_flag(inode, FI_ATOMIC_COMMIT);

 mutex_lock(&fi->inmem_lock);
 err = __f2fs_commit_inmem_pages(inode);
 mutex_unlock(&fi->inmem_lock);

 clear_inode_flag(inode, FI_ATOMIC_COMMIT);

 f2fs_unlock_op(sbi);
 up_write(&fi->i_gc_rwsem[WRITE]);

 return err;
}
