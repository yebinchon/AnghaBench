
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int cp_mutex; int sb; int stat_info; int discard_blks; } ;
struct f2fs_checkpoint {int checkpoint_ver; } ;
struct cp_control {int reason; } ;
struct TYPE_4__ {scalar_t__ dirty_nat_cnt; } ;
struct TYPE_3__ {scalar_t__ dirty_sentries; } ;


 int CP_DISCARD ;
 int CP_FASTBOOT ;
 int CP_PAUSE ;
 int CP_RECOVERY ;
 int CP_SYNC ;
 int CP_TIME ;
 int EIO ;
 int EROFS ;
 struct f2fs_checkpoint* F2FS_CKPT (struct f2fs_sb_info*) ;
 TYPE_2__* NM_I (struct f2fs_sb_info*) ;
 int SBI_CP_DISABLED ;
 int SBI_IS_DIRTY ;
 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 int block_operations (struct f2fs_sb_info*) ;
 int cpu_to_le64 (unsigned long long) ;
 unsigned long long cur_cp_version (struct f2fs_checkpoint*) ;
 int do_checkpoint (struct f2fs_sb_info*,struct cp_control*) ;
 int f2fs_clear_prefree_segments (struct f2fs_sb_info*,struct cp_control*) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_exist_trim_candidates (struct f2fs_sb_info*,struct cp_control*) ;
 int f2fs_flush_merged_writes (struct f2fs_sb_info*) ;
 int f2fs_flush_nat_entries (struct f2fs_sb_info*,struct cp_control*) ;
 int f2fs_flush_sit_entries (struct f2fs_sb_info*,struct cp_control*) ;
 scalar_t__ f2fs_hw_is_readonly (struct f2fs_sb_info*) ;
 int f2fs_notice (struct f2fs_sb_info*,char*,unsigned long long) ;
 scalar_t__ f2fs_readonly (int ) ;
 int f2fs_release_discard_addrs (struct f2fs_sb_info*) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int f2fs_warn (struct f2fs_sb_info*,char*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ prefree_segments (struct f2fs_sb_info*) ;
 int stat_inc_cp_count (int ) ;
 int trace_f2fs_write_checkpoint (int ,int,char*) ;
 int unblock_operations (struct f2fs_sb_info*) ;
 scalar_t__ unlikely (int ) ;

int f2fs_write_checkpoint(struct f2fs_sb_info *sbi, struct cp_control *cpc)
{
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
 unsigned long long ckpt_ver;
 int err = 0;

 if (f2fs_readonly(sbi->sb) || f2fs_hw_is_readonly(sbi))
  return -EROFS;

 if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED))) {
  if (cpc->reason != CP_PAUSE)
   return 0;
  f2fs_warn(sbi, "Start checkpoint disabled!");
 }
 mutex_lock(&sbi->cp_mutex);

 if (!is_sbi_flag_set(sbi, SBI_IS_DIRTY) &&
  ((cpc->reason & CP_FASTBOOT) || (cpc->reason & CP_SYNC) ||
  ((cpc->reason & CP_DISCARD) && !sbi->discard_blks)))
  goto out;
 if (unlikely(f2fs_cp_error(sbi))) {
  err = -EIO;
  goto out;
 }

 trace_f2fs_write_checkpoint(sbi->sb, cpc->reason, "start block_ops");

 err = block_operations(sbi);
 if (err)
  goto out;

 trace_f2fs_write_checkpoint(sbi->sb, cpc->reason, "finish block_ops");

 f2fs_flush_merged_writes(sbi);


 if (cpc->reason & CP_DISCARD) {
  if (!f2fs_exist_trim_candidates(sbi, cpc)) {
   unblock_operations(sbi);
   goto out;
  }

  if (NM_I(sbi)->dirty_nat_cnt == 0 &&
    SIT_I(sbi)->dirty_sentries == 0 &&
    prefree_segments(sbi) == 0) {
   f2fs_flush_sit_entries(sbi, cpc);
   f2fs_clear_prefree_segments(sbi, cpc);
   unblock_operations(sbi);
   goto out;
  }
 }






 ckpt_ver = cur_cp_version(ckpt);
 ckpt->checkpoint_ver = cpu_to_le64(++ckpt_ver);


 err = f2fs_flush_nat_entries(sbi, cpc);
 if (err)
  goto stop;

 f2fs_flush_sit_entries(sbi, cpc);


 err = do_checkpoint(sbi, cpc);
 if (err)
  f2fs_release_discard_addrs(sbi);
 else
  f2fs_clear_prefree_segments(sbi, cpc);
stop:
 unblock_operations(sbi);
 stat_inc_cp_count(sbi->stat_info);

 if (cpc->reason & CP_RECOVERY)
  f2fs_notice(sbi, "checkpoint: version = %llx", ckpt_ver);


 f2fs_update_time(sbi, CP_TIME);
 trace_f2fs_write_checkpoint(sbi->sb, cpc->reason, "finish checkpoint");
out:
 mutex_unlock(&sbi->cp_mutex);
 return err;
}
