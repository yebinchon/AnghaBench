
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_2__ {int * i_gc_rwsem; int i_mmap_sem; } ;


 int DIV_ROUND_UP (int ,int ) ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 size_t WRITE ;
 int __exchange_data_block (struct inode*,struct inode*,int,int,int,int) ;
 int down_write (int *) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_drop_extent_tree (struct inode*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int i_size_read (struct inode*) ;
 int truncate_pagecache (struct inode*,int) ;
 int up_write (int *) ;

__attribute__((used)) static int f2fs_do_collapse(struct inode *inode, loff_t offset, loff_t len)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 pgoff_t nrpages = DIV_ROUND_UP(i_size_read(inode), PAGE_SIZE);
 pgoff_t start = offset >> PAGE_SHIFT;
 pgoff_t end = (offset + len) >> PAGE_SHIFT;
 int ret;

 f2fs_balance_fs(sbi, 1);


 down_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
 down_write(&F2FS_I(inode)->i_mmap_sem);

 f2fs_lock_op(sbi);
 f2fs_drop_extent_tree(inode);
 truncate_pagecache(inode, offset);
 ret = __exchange_data_block(inode, inode, end, start, nrpages - end, 1);
 f2fs_unlock_op(sbi);

 up_write(&F2FS_I(inode)->i_mmap_sem);
 up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
 return ret;
}
