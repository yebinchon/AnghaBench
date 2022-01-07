
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_umount; scalar_t__ s_root; } ;


 int SB_BORN ;
 int down_write (int *) ;
 int emergency_thaw_bdev (struct super_block*) ;
 int thaw_super_locked (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void do_thaw_all_callback(struct super_block *sb)
{
 down_write(&sb->s_umount);
 if (sb->s_root && sb->s_flags & SB_BORN) {
  emergency_thaw_bdev(sb);
  thaw_super_locked(sb);
 } else {
  up_write(&sb->s_umount);
 }
}
