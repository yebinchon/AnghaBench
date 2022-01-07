
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary_block {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int f2fs_update_meta_page (struct f2fs_sb_info*,void*,int ) ;

__attribute__((used)) static void write_sum_page(struct f2fs_sb_info *sbi,
   struct f2fs_summary_block *sum_blk, block_t blk_addr)
{
 f2fs_update_meta_page(sbi, (void *)sum_blk, blk_addr);
}
