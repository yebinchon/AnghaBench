
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef enum wb_reason { ____Placeholder_wb_reason } wb_reason ;


 int get_nr_dirty_pages () ;
 void writeback_inodes_sb_nr (struct super_block*,int ,int) ;

void writeback_inodes_sb(struct super_block *sb, enum wb_reason reason)
{
 return writeback_inodes_sb_nr(sb, get_nr_dirty_pages(), reason);
}
