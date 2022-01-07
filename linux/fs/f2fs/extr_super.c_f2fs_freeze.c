
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int F2FS_SB (struct super_block*) ;
 int SBI_IS_DIRTY ;
 int f2fs_cp_error (int ) ;
 scalar_t__ f2fs_readonly (struct super_block*) ;
 scalar_t__ is_sbi_flag_set (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_freeze(struct super_block *sb)
{
 if (f2fs_readonly(sb))
  return 0;


 if (unlikely(f2fs_cp_error(F2FS_SB(sb))))
  return -EIO;


 if (is_sbi_flag_set(F2FS_SB(sb), SBI_IS_DIRTY))
  return -EINVAL;
 return 0;
}
