
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_crc_seed; int ns_sbwtime; int ns_blocksize; int ns_dat; int ns_sufile; int ns_cpfile; int ns_sem; int ns_mount_state; struct nilfs_super_block** ns_sbp; int ns_sbsize; int ns_bdev; } ;
struct super_block {unsigned int s_flags; } ;
struct nilfs_super_block {int s_feature_compat_ro; int s_log_block_size; int s_wtime; int s_crc_seed; } ;
struct nilfs_recovery_info {int ri_super_root; } ;
typedef int __u64 ;


 int BLOCK_SIZE ;
 int EINVAL ;
 int EROFS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int NILFS_FEATURE_COMPAT_RO_SUPP ;
 int NILFS_VALID_FS ;
 int NORECOVERY ;
 unsigned int SB_RDONLY ;
 int bdev_read_only (int ) ;
 int down_write (int *) ;
 int iput (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (struct nilfs_super_block*,struct nilfs_super_block*,int ) ;
 int nilfs_cleanup_super (struct super_block*) ;
 int nilfs_clear_recovery_info (struct nilfs_recovery_info*) ;
 int nilfs_init_recovery_info (struct nilfs_recovery_info*) ;
 int nilfs_load_super_root (struct the_nilfs*,struct super_block*,int ) ;
 int nilfs_msg (struct super_block*,int ,char*,...) ;
 int nilfs_salvage_orphan_logs (struct the_nilfs*,struct super_block*,struct nilfs_recovery_info*) ;
 int nilfs_search_super_root (struct the_nilfs*,struct nilfs_recovery_info*) ;
 int nilfs_store_log_cursor (struct the_nilfs*,struct nilfs_super_block*) ;
 scalar_t__ nilfs_test_opt (struct the_nilfs*,int ) ;
 int nilfs_valid_fs (struct the_nilfs*) ;
 int nilfs_valid_sb (struct nilfs_super_block*) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

int load_nilfs(struct the_nilfs *nilfs, struct super_block *sb)
{
 struct nilfs_recovery_info ri;
 unsigned int s_flags = sb->s_flags;
 int really_read_only = bdev_read_only(nilfs->ns_bdev);
 int valid_fs = nilfs_valid_fs(nilfs);
 int err;

 if (!valid_fs) {
  nilfs_msg(sb, KERN_WARNING, "mounting unchecked fs");
  if (s_flags & SB_RDONLY) {
   nilfs_msg(sb, KERN_INFO,
      "recovery required for readonly filesystem");
   nilfs_msg(sb, KERN_INFO,
      "write access will be enabled during recovery");
  }
 }

 nilfs_init_recovery_info(&ri);

 err = nilfs_search_super_root(nilfs, &ri);
 if (unlikely(err)) {
  struct nilfs_super_block **sbp = nilfs->ns_sbp;
  int blocksize;

  if (err != -EINVAL)
   goto scan_error;

  if (!nilfs_valid_sb(sbp[1])) {
   nilfs_msg(sb, KERN_WARNING,
      "unable to fall back to spare super block");
   goto scan_error;
  }
  nilfs_msg(sb, KERN_INFO,
     "trying rollback from an earlier position");





  memcpy(sbp[0], sbp[1], nilfs->ns_sbsize);
  nilfs->ns_crc_seed = le32_to_cpu(sbp[0]->s_crc_seed);
  nilfs->ns_sbwtime = le64_to_cpu(sbp[0]->s_wtime);


  blocksize = BLOCK_SIZE << le32_to_cpu(sbp[0]->s_log_block_size);
  if (blocksize != nilfs->ns_blocksize) {
   nilfs_msg(sb, KERN_WARNING,
      "blocksize differs between two super blocks (%d != %d)",
      blocksize, nilfs->ns_blocksize);
   goto scan_error;
  }

  err = nilfs_store_log_cursor(nilfs, sbp[0]);
  if (err)
   goto scan_error;


  nilfs->ns_mount_state &= ~NILFS_VALID_FS;
  valid_fs = 0;

  err = nilfs_search_super_root(nilfs, &ri);
  if (err)
   goto scan_error;
 }

 err = nilfs_load_super_root(nilfs, sb, ri.ri_super_root);
 if (unlikely(err)) {
  nilfs_msg(sb, KERN_ERR, "error %d while loading super root",
     err);
  goto failed;
 }

 if (valid_fs)
  goto skip_recovery;

 if (s_flags & SB_RDONLY) {
  __u64 features;

  if (nilfs_test_opt(nilfs, NORECOVERY)) {
   nilfs_msg(sb, KERN_INFO,
      "norecovery option specified, skipping roll-forward recovery");
   goto skip_recovery;
  }
  features = le64_to_cpu(nilfs->ns_sbp[0]->s_feature_compat_ro) &
   ~NILFS_FEATURE_COMPAT_RO_SUPP;
  if (features) {
   nilfs_msg(sb, KERN_ERR,
      "couldn't proceed with recovery because of unsupported optional features (%llx)",
      (unsigned long long)features);
   err = -EROFS;
   goto failed_unload;
  }
  if (really_read_only) {
   nilfs_msg(sb, KERN_ERR,
      "write access unavailable, cannot proceed");
   err = -EROFS;
   goto failed_unload;
  }
  sb->s_flags &= ~SB_RDONLY;
 } else if (nilfs_test_opt(nilfs, NORECOVERY)) {
  nilfs_msg(sb, KERN_ERR,
     "recovery cancelled because norecovery option was specified for a read/write mount");
  err = -EINVAL;
  goto failed_unload;
 }

 err = nilfs_salvage_orphan_logs(nilfs, sb, &ri);
 if (err)
  goto failed_unload;

 down_write(&nilfs->ns_sem);
 nilfs->ns_mount_state |= NILFS_VALID_FS;
 err = nilfs_cleanup_super(sb);
 up_write(&nilfs->ns_sem);

 if (err) {
  nilfs_msg(sb, KERN_ERR,
     "error %d updating super block. recovery unfinished.",
     err);
  goto failed_unload;
 }
 nilfs_msg(sb, KERN_INFO, "recovery complete");

 skip_recovery:
 nilfs_clear_recovery_info(&ri);
 sb->s_flags = s_flags;
 return 0;

 scan_error:
 nilfs_msg(sb, KERN_ERR, "error %d while searching super root", err);
 goto failed;

 failed_unload:
 iput(nilfs->ns_cpfile);
 iput(nilfs->ns_sufile);
 iput(nilfs->ns_dat);

 failed:
 nilfs_clear_recovery_info(&ri);
 sb->s_flags = s_flags;
 return err;
}
