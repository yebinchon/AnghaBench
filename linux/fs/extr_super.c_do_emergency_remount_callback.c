
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_umount; scalar_t__ s_root; scalar_t__ s_bdev; } ;
struct fs_context {int dummy; } ;


 int IS_ERR (struct fs_context*) ;
 int SB_BORN ;
 int SB_FORCE ;
 int SB_RDONLY ;
 int down_write (int *) ;
 struct fs_context* fs_context_for_reconfigure (scalar_t__,int,int) ;
 scalar_t__ parse_monolithic_mount_data (struct fs_context*,int *) ;
 int put_fs_context (struct fs_context*) ;
 int reconfigure_super (struct fs_context*) ;
 int sb_rdonly (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void do_emergency_remount_callback(struct super_block *sb)
{
 down_write(&sb->s_umount);
 if (sb->s_root && sb->s_bdev && (sb->s_flags & SB_BORN) &&
     !sb_rdonly(sb)) {
  struct fs_context *fc;

  fc = fs_context_for_reconfigure(sb->s_root,
     SB_RDONLY | SB_FORCE, SB_RDONLY);
  if (!IS_ERR(fc)) {
   if (parse_monolithic_mount_data(fc, ((void*)0)) == 0)
    (void)reconfigure_super(fc);
   put_fs_context(fc);
  }
 }
 up_write(&sb->s_umount);
}
