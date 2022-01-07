
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int old_blkaddr; int page; } ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ATOMIC_WRITTEN_PAGE (int ) ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 int LFS ;
 int SBI_CP_DISABLED ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_checkpointed_data (struct f2fs_sb_info*,int ) ;
 scalar_t__ is_cold_data (int ) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int) ;

bool f2fs_should_update_outplace(struct inode *inode, struct f2fs_io_info *fio)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);

 if (test_opt(sbi, LFS))
  return 1;
 if (S_ISDIR(inode->i_mode))
  return 1;
 if (IS_NOQUOTA(inode))
  return 1;
 if (f2fs_is_atomic_file(inode))
  return 1;
 if (fio) {
  if (is_cold_data(fio->page))
   return 1;
  if (IS_ATOMIC_WRITTEN_PAGE(fio->page))
   return 1;
  if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED) &&
   f2fs_is_checkpointed_data(sbi, fio->old_blkaddr)))
   return 1;
 }
 return 0;
}
