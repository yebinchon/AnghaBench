
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int cur_cp_pack; } ;



__attribute__((used)) static inline void __set_cp_next_pack(struct f2fs_sb_info *sbi)
{
 sbi->cur_cp_pack = (sbi->cur_cp_pack == 1) ? 2 : 1;
}
