
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned long s_flags; } ;
struct f2fs_mount_info {scalar_t__ whint_mode; int ** s_qf_names; int s_jquota_fmt; } ;
struct f2fs_sb_info {struct f2fs_mount_info mount_opt; scalar_t__ gc_thread; } ;
struct TYPE_2__ {scalar_t__ whint_mode; int ** s_qf_names; int s_jquota_fmt; } ;


 int BG_GC ;
 int DISABLE_CHECKPOINT ;
 int EINVAL ;
 int ENOMEM ;
 int EXTENT_CACHE ;
 int F2FS_IO_ALIGNED (struct f2fs_sb_info*) ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 struct f2fs_sb_info* F2FS_SB (struct super_block*) ;
 int FLUSH_MERGE ;
 int GFP_KERNEL ;
 int MAXQUOTAS ;
 int POSIX_ACL ;
 int SBI_IS_CLOSE ;
 int SBI_IS_DIRTY ;
 int SBI_NEED_SB_WRITE ;
 int SB_LAZYTIME ;
 int SB_POSIXACL ;
 int SB_RDONLY ;
 int WB_REASON_SYNC ;
 int clear_opt (struct f2fs_sb_info*,int ) ;
 int clear_sbi_flag (struct f2fs_sb_info*,int ) ;
 int default_options (struct f2fs_sb_info*) ;
 int dquot_resume (struct super_block*,int) ;
 int dquot_suspend (struct super_block*,int) ;
 int f2fs_commit_super (struct f2fs_sb_info*,int) ;
 int f2fs_create_flush_cmd_control (struct f2fs_sb_info*) ;
 int f2fs_destroy_flush_cmd_control (struct f2fs_sb_info*,int) ;
 int f2fs_disable_checkpoint (struct f2fs_sb_info*) ;
 int f2fs_enable_checkpoint (struct f2fs_sb_info*) ;
 int f2fs_enable_quotas (struct super_block*) ;
 int f2fs_info (struct f2fs_sb_info*,char*,int) ;
 scalar_t__ f2fs_readonly (struct super_block*) ;
 scalar_t__ f2fs_sb_has_quota_ino (struct f2fs_sb_info*) ;
 int f2fs_start_gc_thread (struct f2fs_sb_info*) ;
 int f2fs_stop_gc_thread (struct f2fs_sb_info*) ;
 int f2fs_sync_fs (struct super_block*,int) ;
 int f2fs_warn (struct f2fs_sb_info*,char*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int * kstrdup (int *,int ) ;
 int kvfree (int *) ;
 int limit_reserve_root (struct f2fs_sb_info*) ;
 int parse_options (struct super_block*,char*) ;
 scalar_t__ sb_any_quota_suspended (struct super_block*) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int sync_inodes_sb (struct super_block*) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 int writeback_inodes_sb (struct super_block*,int ) ;

__attribute__((used)) static int f2fs_remount(struct super_block *sb, int *flags, char *data)
{
 struct f2fs_sb_info *sbi = F2FS_SB(sb);
 struct f2fs_mount_info org_mount_opt;
 unsigned long old_sb_flags;
 int err;
 bool need_restart_gc = 0;
 bool need_stop_gc = 0;
 bool no_extent_cache = !test_opt(sbi, EXTENT_CACHE);
 bool disable_checkpoint = test_opt(sbi, DISABLE_CHECKPOINT);
 bool no_io_align = !F2FS_IO_ALIGNED(sbi);
 bool checkpoint_changed;
 org_mount_opt = sbi->mount_opt;
 old_sb_flags = sb->s_flags;
 if (!(*flags & SB_RDONLY) && is_sbi_flag_set(sbi, SBI_NEED_SB_WRITE)) {
  err = f2fs_commit_super(sbi, 0);
  f2fs_info(sbi, "Try to recover all the superblocks, ret: %d",
     err);
  if (!err)
   clear_sbi_flag(sbi, SBI_NEED_SB_WRITE);
 }

 default_options(sbi);


 err = parse_options(sb, data);
 if (err)
  goto restore_opts;
 checkpoint_changed =
   disable_checkpoint != test_opt(sbi, DISABLE_CHECKPOINT);





 if (f2fs_readonly(sb) && (*flags & SB_RDONLY))
  goto skip;
 if (no_extent_cache == !!test_opt(sbi, EXTENT_CACHE)) {
  err = -EINVAL;
  f2fs_warn(sbi, "switch extent_cache option is not allowed");
  goto restore_opts;
 }

 if (no_io_align == !!F2FS_IO_ALIGNED(sbi)) {
  err = -EINVAL;
  f2fs_warn(sbi, "switch io_bits option is not allowed");
  goto restore_opts;
 }

 if ((*flags & SB_RDONLY) && test_opt(sbi, DISABLE_CHECKPOINT)) {
  err = -EINVAL;
  f2fs_warn(sbi, "disabling checkpoint not compatible with read-only");
  goto restore_opts;
 }






 if ((*flags & SB_RDONLY) || !test_opt(sbi, BG_GC)) {
  if (sbi->gc_thread) {
   f2fs_stop_gc_thread(sbi);
   need_restart_gc = 1;
  }
 } else if (!sbi->gc_thread) {
  err = f2fs_start_gc_thread(sbi);
  if (err)
   goto restore_opts;
  need_stop_gc = 1;
 }

 if (*flags & SB_RDONLY ||
  F2FS_OPTION(sbi).whint_mode != org_mount_opt.whint_mode) {
  writeback_inodes_sb(sb, WB_REASON_SYNC);
  sync_inodes_sb(sb);

  set_sbi_flag(sbi, SBI_IS_DIRTY);
  set_sbi_flag(sbi, SBI_IS_CLOSE);
  f2fs_sync_fs(sb, 1);
  clear_sbi_flag(sbi, SBI_IS_CLOSE);
 }

 if (checkpoint_changed) {
  if (test_opt(sbi, DISABLE_CHECKPOINT)) {
   err = f2fs_disable_checkpoint(sbi);
   if (err)
    goto restore_gc;
  } else {
   f2fs_enable_checkpoint(sbi);
  }
 }





 if ((*flags & SB_RDONLY) || !test_opt(sbi, FLUSH_MERGE)) {
  clear_opt(sbi, FLUSH_MERGE);
  f2fs_destroy_flush_cmd_control(sbi, 0);
 } else {
  err = f2fs_create_flush_cmd_control(sbi);
  if (err)
   goto restore_gc;
 }
skip:






 sb->s_flags = (sb->s_flags & ~SB_POSIXACL) |
  (test_opt(sbi, POSIX_ACL) ? SB_POSIXACL : 0);

 limit_reserve_root(sbi);
 *flags = (*flags & ~SB_LAZYTIME) | (sb->s_flags & SB_LAZYTIME);
 return 0;
restore_gc:
 if (need_restart_gc) {
  if (f2fs_start_gc_thread(sbi))
   f2fs_warn(sbi, "background gc thread has stopped");
 } else if (need_stop_gc) {
  f2fs_stop_gc_thread(sbi);
 }
restore_opts:







 sbi->mount_opt = org_mount_opt;
 sb->s_flags = old_sb_flags;
 return err;
}
