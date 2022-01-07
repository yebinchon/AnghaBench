
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;
struct TYPE_2__ {int cp_pack_start_sum; } ;


 TYPE_1__* F2FS_CKPT (struct f2fs_sb_info*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline block_t __start_sum_addr(struct f2fs_sb_info *sbi)
{
 return le32_to_cpu(F2FS_CKPT(sbi)->cp_pack_start_sum);
}
