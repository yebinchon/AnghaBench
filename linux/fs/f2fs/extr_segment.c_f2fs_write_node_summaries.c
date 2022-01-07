
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int CURSEG_HOT_NODE ;
 int write_normal_summaries (struct f2fs_sb_info*,int ,int ) ;

void f2fs_write_node_summaries(struct f2fs_sb_info *sbi, block_t start_blk)
{
 write_normal_summaries(sbi, start_blk, CURSEG_HOT_NODE);
}
