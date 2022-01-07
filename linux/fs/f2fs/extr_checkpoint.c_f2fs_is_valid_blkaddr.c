
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;
struct TYPE_4__ {int sit_base_addr; } ;
struct TYPE_3__ {int ssa_blkaddr; } ;


 int BUG () ;



 int MAIN_BLKADDR (struct f2fs_sb_info*) ;
 int MAX_BLKADDR (struct f2fs_sb_info*) ;






 int SBI_NEED_FSCK ;
 int SEG0_BLKADDR (struct f2fs_sb_info*) ;
 int SIT_BLK_CNT (struct f2fs_sb_info*) ;
 TYPE_2__* SIT_I (struct f2fs_sb_info*) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int WARN_ON (int) ;
 int __is_bitmap_valid (struct f2fs_sb_info*,int ,int) ;
 int __start_cp_addr (struct f2fs_sb_info*) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int unlikely (int) ;

bool f2fs_is_valid_blkaddr(struct f2fs_sb_info *sbi,
     block_t blkaddr, int type)
{
 switch (type) {
 case 131:
  break;
 case 129:
  if (unlikely(blkaddr >= SIT_BLK_CNT(sbi)))
   return 0;
  break;
 case 128:
  if (unlikely(blkaddr >= MAIN_BLKADDR(sbi) ||
   blkaddr < SM_I(sbi)->ssa_blkaddr))
   return 0;
  break;
 case 133:
  if (unlikely(blkaddr >= SIT_I(sbi)->sit_base_addr ||
   blkaddr < __start_cp_addr(sbi)))
   return 0;
  break;
 case 130:
  if (unlikely(blkaddr >= MAX_BLKADDR(sbi) ||
   blkaddr < MAIN_BLKADDR(sbi)))
   return 0;
  break;
 case 136:
 case 135:
 case 134:
  if (unlikely(blkaddr >= MAX_BLKADDR(sbi) ||
    blkaddr < MAIN_BLKADDR(sbi))) {
   f2fs_warn(sbi, "access invalid blkaddr:%u",
      blkaddr);
   set_sbi_flag(sbi, SBI_NEED_FSCK);
   WARN_ON(1);
   return 0;
  } else {
   return __is_bitmap_valid(sbi, blkaddr, type);
  }
  break;
 case 132:
  if (unlikely(blkaddr < SEG0_BLKADDR(sbi) ||
   blkaddr >= MAIN_BLKADDR(sbi)))
   return 0;
  break;
 default:
  BUG();
 }

 return 1;
}
