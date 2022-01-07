
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; scalar_t__ s_root; } ;
struct f2fs_sb_info {int dummy; } ;
struct cp_control {int reason; } ;


 int CP_UMOUNT ;
 int CP_UMOUNT_FLAG ;
 struct f2fs_sb_info* F2FS_SB (struct super_block*) ;
 int SBI_IS_CLOSE ;
 int SBI_IS_DIRTY ;
 int SBI_IS_RECOVERED ;
 int SB_RDONLY ;
 scalar_t__ f2fs_readonly (struct super_block*) ;
 int f2fs_stop_discard_thread (struct f2fs_sb_info*) ;
 int f2fs_stop_gc_thread (struct f2fs_sb_info*) ;
 int f2fs_write_checkpoint (struct f2fs_sb_info*,struct cp_control*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;
 int kill_block_super (struct super_block*) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static void kill_f2fs_super(struct super_block *sb)
{
 if (sb->s_root) {
  struct f2fs_sb_info *sbi = F2FS_SB(sb);

  set_sbi_flag(sbi, SBI_IS_CLOSE);
  f2fs_stop_gc_thread(sbi);
  f2fs_stop_discard_thread(sbi);

  if (is_sbi_flag_set(sbi, SBI_IS_DIRTY) ||
    !is_set_ckpt_flags(sbi, CP_UMOUNT_FLAG)) {
   struct cp_control cpc = {
    .reason = CP_UMOUNT,
   };
   f2fs_write_checkpoint(sbi, &cpc);
  }

  if (is_sbi_flag_set(sbi, SBI_IS_RECOVERED) && f2fs_readonly(sb))
   sb->s_flags &= ~SB_RDONLY;
 }
 kill_block_super(sb);
}
