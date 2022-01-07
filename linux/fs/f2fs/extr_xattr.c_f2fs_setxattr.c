
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int i_sem; int i_xattr_sem; } ;


 int EIO ;
 int ENOSPC ;
 TYPE_1__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int REQ_TIME ;
 int __f2fs_setxattr (struct inode*,int,char const*,void const*,size_t,struct page*,int) ;
 int down_write (int *) ;
 int dquot_initialize (struct inode*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;

int f2fs_setxattr(struct inode *inode, int index, const char *name,
    const void *value, size_t size,
    struct page *ipage, int flags)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int err;

 if (unlikely(f2fs_cp_error(sbi)))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(sbi))
  return -ENOSPC;

 err = dquot_initialize(inode);
 if (err)
  return err;


 if (ipage)
  return __f2fs_setxattr(inode, index, name, value,
      size, ipage, flags);
 f2fs_balance_fs(sbi, 1);

 f2fs_lock_op(sbi);

 down_write(&F2FS_I(inode)->i_sem);
 down_write(&F2FS_I(inode)->i_xattr_sem);
 err = __f2fs_setxattr(inode, index, name, value, size, ipage, flags);
 up_write(&F2FS_I(inode)->i_xattr_sem);
 up_write(&F2FS_I(inode)->i_sem);
 f2fs_unlock_op(sbi);

 f2fs_update_time(sbi, REQ_TIME);
 return err;
}
