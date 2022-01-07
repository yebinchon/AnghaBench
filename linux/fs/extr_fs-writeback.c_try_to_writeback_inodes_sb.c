
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;
typedef enum wb_reason { ____Placeholder_wb_reason } wb_reason ;


 int __writeback_inodes_sb_nr (struct super_block*,int ,int,int) ;
 int down_read_trylock (int *) ;
 int get_nr_dirty_pages () ;
 int up_read (int *) ;

void try_to_writeback_inodes_sb(struct super_block *sb, enum wb_reason reason)
{
 if (!down_read_trylock(&sb->s_umount))
  return;

 __writeback_inodes_sb_nr(sb, get_nr_dirty_pages(), reason, 1);
 up_read(&sb->s_umount);
}
