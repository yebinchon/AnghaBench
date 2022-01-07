
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int ckpt_valid_blocks; } ;


 TYPE_1__* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static inline unsigned int get_ckpt_valid_blocks(struct f2fs_sb_info *sbi,
    unsigned int segno)
{
 return get_seg_entry(sbi, segno)->ckpt_valid_blocks;
}
