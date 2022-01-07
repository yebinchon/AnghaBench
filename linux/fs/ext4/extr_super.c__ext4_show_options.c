
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct seq_file {int dummy; } ;
struct mount_opts {scalar_t__ token; int flags; int mount_opt; } ;
struct ext4_super_block {int s_errors; int s_def_resgid; int s_def_resuid; } ;
struct ext4_sb_info {int s_def_mount_opt; int s_sb_block; int s_mount_opt; int s_commit_interval; int s_min_batch_time; int s_max_batch_time; int s_stripe; int s_inode_readahead_blks; int s_li_wait_mult; int s_max_dir_size_kb; int s_resgid; int s_resuid; struct ext4_super_block* s_es; } ;


 int DATA_ERR_ABORT ;
 int DATA_FLAGS ;
 scalar_t__ DUMMY_ENCRYPTION_ENABLED (struct ext4_sb_info*) ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 int EXT4_DEF_INODE_READAHEAD_BLKS ;
 int EXT4_DEF_LI_WAIT_MULT ;
 int EXT4_DEF_MAX_BATCH_TIME ;
 int EXT4_DEF_MIN_BATCH_TIME ;
 int EXT4_DEF_RESGID ;
 int EXT4_DEF_RESUID ;
 int EXT4_ERRORS_CONTINUE ;
 int EXT4_ERRORS_PANIC ;
 int EXT4_ERRORS_RO ;
 int EXT4_MOUNT_DATA_FLAGS ;
 scalar_t__ EXT4_MOUNT_JOURNAL_DATA ;
 scalar_t__ EXT4_MOUNT_ORDERED_DATA ;
 scalar_t__ EXT4_MOUNT_WRITEBACK_DATA ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int HZ ;
 int INIT_INODE_TABLE ;
 int JBD2_DEFAULT_MAX_COMMIT_AGE ;
 int MOPT_CLEAR ;
 int MOPT_CLEAR_ERR ;
 int MOPT_SET ;
 scalar_t__ Opt_err ;
 int SB_I_VERSION ;
 int SEQ_OPTS_PRINT (char*,int) ;
 int SEQ_OPTS_PUTS (char*) ;
 struct mount_opts* ext4_mount_opts ;
 int ext4_show_quota_options (struct seq_file*,struct super_block*) ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int gid_eq (int ,int ) ;
 int init_user_ns ;
 int le16_to_cpu (int ) ;
 int make_kgid (int *,int) ;
 int make_kuid (int *,int) ;
 scalar_t__ test_opt (struct super_block*,int ) ;
 int token2str (scalar_t__) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int _ext4_show_options(struct seq_file *seq, struct super_block *sb,
         int nodefs)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;
 int def_errors, def_mount_opt = sbi->s_def_mount_opt;
 const struct mount_opts *m;
 char sep = nodefs ? '\n' : ',';




 if (sbi->s_sb_block != 1)
  seq_printf(seq, "%c" "sb=%llu", sep, sbi->s_sb_block);

 for (m = ext4_mount_opts; m->token != Opt_err; m++) {
  int want_set = m->flags & MOPT_SET;
  if (((m->flags & (MOPT_SET|MOPT_CLEAR)) == 0) ||
      (m->flags & MOPT_CLEAR_ERR))
   continue;
  if (!nodefs && !(m->mount_opt & (sbi->s_mount_opt ^ def_mount_opt)))
   continue;
  if ((want_set &&
       (sbi->s_mount_opt & m->mount_opt) != m->mount_opt) ||
      (!want_set && (sbi->s_mount_opt & m->mount_opt)))
   continue;
  seq_printf(seq, "%c" "%s", sep, token2str(m->token));
 }

 if (nodefs || !uid_eq(sbi->s_resuid, make_kuid(&init_user_ns, EXT4_DEF_RESUID)) ||
     le16_to_cpu(es->s_def_resuid) != EXT4_DEF_RESUID)
  seq_printf(seq, "%c" "resuid=%u", sep, from_kuid_munged(&init_user_ns, sbi->s_resuid));

 if (nodefs || !gid_eq(sbi->s_resgid, make_kgid(&init_user_ns, EXT4_DEF_RESGID)) ||
     le16_to_cpu(es->s_def_resgid) != EXT4_DEF_RESGID)
  seq_printf(seq, "%c" "resgid=%u", sep, from_kgid_munged(&init_user_ns, sbi->s_resgid));

 def_errors = nodefs ? -1 : le16_to_cpu(es->s_errors);
 if (test_opt(sb, ERRORS_RO) && def_errors != EXT4_ERRORS_RO)
  seq_printf(seq, "%c" "errors=remount-ro", sep);
 if (test_opt(sb, ERRORS_CONT) && def_errors != EXT4_ERRORS_CONTINUE)
  seq_printf(seq, "%c" "errors=continue", sep);
 if (test_opt(sb, ERRORS_PANIC) && def_errors != EXT4_ERRORS_PANIC)
  seq_printf(seq, "%c" "errors=panic", sep);
 if (nodefs || sbi->s_commit_interval != JBD2_DEFAULT_MAX_COMMIT_AGE*HZ)
  seq_printf(seq, "%c" "commit=%lu", sep, sbi->s_commit_interval / HZ);
 if (nodefs || sbi->s_min_batch_time != EXT4_DEF_MIN_BATCH_TIME)
  seq_printf(seq, "%c" "min_batch_time=%u", sep, sbi->s_min_batch_time);
 if (nodefs || sbi->s_max_batch_time != EXT4_DEF_MAX_BATCH_TIME)
  seq_printf(seq, "%c" "max_batch_time=%u", sep, sbi->s_max_batch_time);
 if (sb->s_flags & SB_I_VERSION)
  seq_printf(seq, "%c" "i_version", sep);
 if (nodefs || sbi->s_stripe)
  seq_printf(seq, "%c" "stripe=%lu", sep, sbi->s_stripe);
 if (nodefs || EXT4_MOUNT_DATA_FLAGS &
   (sbi->s_mount_opt ^ def_mount_opt)) {
  if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_JOURNAL_DATA)
   seq_printf(seq, "%c" "data=journal", sep);
  else if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_ORDERED_DATA)
   seq_printf(seq, "%c" "data=ordered", sep);
  else if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_WRITEBACK_DATA)
   seq_printf(seq, "%c" "data=writeback", sep);
 }
 if (nodefs ||
     sbi->s_inode_readahead_blks != EXT4_DEF_INODE_READAHEAD_BLKS)
  seq_printf(seq, "%c" "inode_readahead_blks=%u", sep, sbi->s_inode_readahead_blks);


 if (test_opt(sb, INIT_INODE_TABLE) && (nodefs ||
         (sbi->s_li_wait_mult != EXT4_DEF_LI_WAIT_MULT)))
  seq_printf(seq, "%c" "init_itable=%u", sep, sbi->s_li_wait_mult);
 if (nodefs || sbi->s_max_dir_size_kb)
  seq_printf(seq, "%c" "max_dir_size_kb=%u", sep, sbi->s_max_dir_size_kb);
 if (test_opt(sb, DATA_ERR_ABORT))
  seq_printf(seq, "%c" "data_err=abort", sep);
 if (DUMMY_ENCRYPTION_ENABLED(sbi))
  seq_printf(seq, "%c" "test_dummy_encryption", sep);

 ext4_show_quota_options(seq, sb);
 return 0;
}
