
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef enum wb_reason { ____Placeholder_wb_reason } wb_reason ;


 int __writeback_inodes_sb_nr (struct super_block*,unsigned long,int,int) ;

void writeback_inodes_sb_nr(struct super_block *sb,
       unsigned long nr,
       enum wb_reason reason)
{
 __writeback_inodes_sb_nr(sb, nr, reason, 0);
}
