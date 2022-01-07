
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int cur_cp_pack; scalar_t__ blocks_per_seg; } ;
typedef int block_t ;
struct TYPE_2__ {int cp_blkaddr; } ;


 TYPE_1__* F2FS_RAW_SUPER (struct f2fs_sb_info*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline block_t __start_cp_addr(struct f2fs_sb_info *sbi)
{
 block_t start_addr = le32_to_cpu(F2FS_RAW_SUPER(sbi)->cp_blkaddr);

 if (sbi->cur_cp_pack == 2)
  start_addr += sbi->blocks_per_seg;
 return start_addr;
}
