
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct f2fs_sb_info {int sb; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int EROFS ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int SBI_CP_DISABLED ;
 int capable (int ) ;
 int f2fs_info (struct f2fs_sb_info*,char*) ;
 scalar_t__ f2fs_readonly (int ) ;
 int f2fs_sync_fs (int ,int) ;
 struct inode* file_inode (struct file*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_ioc_write_checkpoint(struct file *filp, unsigned long arg)
{
 struct inode *inode = file_inode(filp);
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 int ret;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (f2fs_readonly(sbi->sb))
  return -EROFS;

 if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED))) {
  f2fs_info(sbi, "Skipping Checkpoint. Checkpoints currently disabled.");
  return -EINVAL;
 }

 ret = mnt_want_write_file(filp);
 if (ret)
  return ret;

 ret = f2fs_sync_fs(sbi->sb, 1);

 mnt_drop_write_file(filp);
 return ret;
}
