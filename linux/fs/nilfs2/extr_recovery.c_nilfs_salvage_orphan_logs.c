
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_recovery_info {scalar_t__ ri_lsegs_start; scalar_t__ ri_lsegs_end; scalar_t__ ri_need_recovery; int ri_cno; } ;


 int KERN_ERR ;
 scalar_t__ NILFS_RECOVERY_ROLLFORWARD_DONE ;
 int nilfs_attach_checkpoint (struct super_block*,int ,int,struct nilfs_root**) ;
 int nilfs_attach_log_writer (struct super_block*,struct nilfs_root*) ;
 int nilfs_construct_segment (struct super_block*) ;
 int nilfs_detach_log_writer (struct super_block*) ;
 int nilfs_do_roll_forward (struct the_nilfs*,struct super_block*,struct nilfs_root*,struct nilfs_recovery_info*) ;
 int nilfs_finish_roll_forward (struct the_nilfs*,struct nilfs_recovery_info*) ;
 int nilfs_msg (struct super_block*,int ,char*,int) ;
 int nilfs_prepare_segment_for_recovery (struct the_nilfs*,struct super_block*,struct nilfs_recovery_info*) ;
 int nilfs_put_root (struct nilfs_root*) ;
 int set_nilfs_discontinued (struct the_nilfs*) ;
 scalar_t__ unlikely (int) ;

int nilfs_salvage_orphan_logs(struct the_nilfs *nilfs,
         struct super_block *sb,
         struct nilfs_recovery_info *ri)
{
 struct nilfs_root *root;
 int err;

 if (ri->ri_lsegs_start == 0 || ri->ri_lsegs_end == 0)
  return 0;

 err = nilfs_attach_checkpoint(sb, ri->ri_cno, 1, &root);
 if (unlikely(err)) {
  nilfs_msg(sb, KERN_ERR,
     "error %d loading the latest checkpoint", err);
  return err;
 }

 err = nilfs_do_roll_forward(nilfs, sb, root, ri);
 if (unlikely(err))
  goto failed;

 if (ri->ri_need_recovery == NILFS_RECOVERY_ROLLFORWARD_DONE) {
  err = nilfs_prepare_segment_for_recovery(nilfs, sb, ri);
  if (unlikely(err)) {
   nilfs_msg(sb, KERN_ERR,
      "error %d preparing segment for recovery",
      err);
   goto failed;
  }

  err = nilfs_attach_log_writer(sb, root);
  if (unlikely(err))
   goto failed;

  set_nilfs_discontinued(nilfs);
  err = nilfs_construct_segment(sb);
  nilfs_detach_log_writer(sb);

  if (unlikely(err)) {
   nilfs_msg(sb, KERN_ERR,
      "error %d writing segment for recovery",
      err);
   goto failed;
  }

  nilfs_finish_roll_forward(nilfs, ri);
 }

 failed:
 nilfs_put_root(root);
 return err;
}
