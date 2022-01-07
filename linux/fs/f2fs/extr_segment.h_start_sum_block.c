
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {int cp_pack_start_sum; } ;


 TYPE_1__* F2FS_CKPT (struct f2fs_sb_info*) ;
 scalar_t__ __start_cp_addr (struct f2fs_sb_info*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline block_t start_sum_block(struct f2fs_sb_info *sbi)
{
 return __start_cp_addr(sbi) +
  le32_to_cpu(F2FS_CKPT(sbi)->cp_pack_start_sum);
}
