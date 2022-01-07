
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int REISERFS_DATA_LOG ;
 int REISERFS_DATA_ORDERED ;
 int REISERFS_DATA_WRITEBACK ;
 int reiserfs_data_log (struct super_block*) ;
 int reiserfs_data_ordered (struct super_block*) ;
 int reiserfs_data_writeback (struct super_block*) ;
 int reiserfs_info (struct super_block*,char*) ;
 int switch_data_mode (struct super_block*,int) ;

__attribute__((used)) static void handle_data_mode(struct super_block *s, unsigned long mount_options)
{
 if (mount_options & (1 << REISERFS_DATA_LOG)) {
  if (!reiserfs_data_log(s)) {
   switch_data_mode(s, REISERFS_DATA_LOG);
   reiserfs_info(s, "switching to journaled data mode\n");
  }
 } else if (mount_options & (1 << REISERFS_DATA_ORDERED)) {
  if (!reiserfs_data_ordered(s)) {
   switch_data_mode(s, REISERFS_DATA_ORDERED);
   reiserfs_info(s, "switching to ordered data mode\n");
  }
 } else if (mount_options & (1 << REISERFS_DATA_WRITEBACK)) {
  if (!reiserfs_data_writeback(s)) {
   switch_data_mode(s, REISERFS_DATA_WRITEBACK);
   reiserfs_info(s, "switching to writeback data mode\n");
  }
 }
}
