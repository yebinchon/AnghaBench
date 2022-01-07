
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int node_change; } ;


 int F2FS_GET_BLOCK_PRE_AIO ;
 int down_read (int *) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int up_read (int *) ;

void __do_map_lock(struct f2fs_sb_info *sbi, int flag, bool lock)
{
 if (flag == F2FS_GET_BLOCK_PRE_AIO) {
  if (lock)
   down_read(&sbi->node_change);
  else
   up_read(&sbi->node_change);
 } else {
  if (lock)
   f2fs_lock_op(sbi);
  else
   f2fs_unlock_op(sbi);
 }
}
