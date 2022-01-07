
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct buffer_head* s_sbh; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int KERN_ERR ;
 scalar_t__ buffer_write_io_error (struct buffer_head*) ;
 int clear_buffer_write_io_error (struct buffer_head*) ;
 int ext2_msg (struct super_block*,int ,char*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static void ext2_clear_super_error(struct super_block *sb)
{
 struct buffer_head *sbh = EXT2_SB(sb)->s_sbh;

 if (buffer_write_io_error(sbh)) {
  ext2_msg(sb, KERN_ERR,
         "previous I/O error to superblock detected");
  clear_buffer_write_io_error(sbh);
  set_buffer_uptodate(sbh);
 }
}
