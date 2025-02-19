
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ block_t ;


 scalar_t__ IS_DATASEG (int) ;
 int NR_CURSEG_DATA_TYPE ;
 int NR_CURSEG_NODE_TYPE ;
 int write_current_sum_page (struct f2fs_sb_info*,int,scalar_t__) ;

__attribute__((used)) static void write_normal_summaries(struct f2fs_sb_info *sbi,
     block_t blkaddr, int type)
{
 int i, end;
 if (IS_DATASEG(type))
  end = type + NR_CURSEG_DATA_TYPE;
 else
  end = type + NR_CURSEG_NODE_TYPE;

 for (i = type; i < end; i++)
  write_current_sum_page(sbi, i, blkaddr + (i - type));
}
