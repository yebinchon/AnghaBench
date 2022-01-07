
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int CP_ERROR_FLAG ;
 int is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool f2fs_cp_error(struct f2fs_sb_info *sbi)
{
 return is_set_ckpt_flags(sbi, CP_ERROR_FLAG);
}
