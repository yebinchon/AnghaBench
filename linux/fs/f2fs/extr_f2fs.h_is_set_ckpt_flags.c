
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int F2FS_CKPT (struct f2fs_sb_info*) ;
 int __is_set_ckpt_flags (int ,unsigned int) ;

__attribute__((used)) static inline bool is_set_ckpt_flags(struct f2fs_sb_info *sbi, unsigned int f)
{
 return __is_set_ckpt_flags(F2FS_CKPT(sbi), f);
}
