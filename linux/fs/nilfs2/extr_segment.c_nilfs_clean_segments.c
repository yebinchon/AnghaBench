
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_dat; int ns_gc_inodes; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {scalar_t__ sc_nfreesegs; int * sc_freesegs; int sc_interval; int sc_gc_inodes; } ;
struct nilfs_argv {scalar_t__ v_nmembs; } ;


 int DISCARD ;
 int EROFS ;
 int KERN_WARNING ;
 int SC_LSEG_SR ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ likely (int) ;
 int list_splice_tail_init (int *,int *) ;
 int nilfs_clear_opt (struct the_nilfs*,int ) ;
 int nilfs_discard_segments (struct the_nilfs*,int *,scalar_t__) ;
 int nilfs_ioctl_prepare_clean_segments (struct the_nilfs*,struct nilfs_argv*,void**) ;
 int nilfs_mdt_clear_shadow_map (int ) ;
 int nilfs_mdt_restore_from_shadow_map (int ) ;
 int nilfs_mdt_save_to_shadow_map (int ) ;
 int nilfs_msg (struct super_block*,int ,char*,int) ;
 int nilfs_remove_written_gcinodes (struct the_nilfs*,int *) ;
 int nilfs_segctor_construct (struct nilfs_sc_info*,int ) ;
 scalar_t__ nilfs_test_opt (struct the_nilfs*,int ) ;
 int nilfs_transaction_lock (struct super_block*,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_unlock (struct super_block*) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 scalar_t__ unlikely (int) ;

int nilfs_clean_segments(struct super_block *sb, struct nilfs_argv *argv,
    void **kbufs)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_sc_info *sci = nilfs->ns_writer;
 struct nilfs_transaction_info ti;
 int err;

 if (unlikely(!sci))
  return -EROFS;

 nilfs_transaction_lock(sb, &ti, 1);

 err = nilfs_mdt_save_to_shadow_map(nilfs->ns_dat);
 if (unlikely(err))
  goto out_unlock;

 err = nilfs_ioctl_prepare_clean_segments(nilfs, argv, kbufs);
 if (unlikely(err)) {
  nilfs_mdt_restore_from_shadow_map(nilfs->ns_dat);
  goto out_unlock;
 }

 sci->sc_freesegs = kbufs[4];
 sci->sc_nfreesegs = argv[4].v_nmembs;
 list_splice_tail_init(&nilfs->ns_gc_inodes, &sci->sc_gc_inodes);

 for (;;) {
  err = nilfs_segctor_construct(sci, SC_LSEG_SR);
  nilfs_remove_written_gcinodes(nilfs, &sci->sc_gc_inodes);

  if (likely(!err))
   break;

  nilfs_msg(sb, KERN_WARNING, "error %d cleaning segments", err);
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(sci->sc_interval);
 }
 if (nilfs_test_opt(nilfs, DISCARD)) {
  int ret = nilfs_discard_segments(nilfs, sci->sc_freesegs,
       sci->sc_nfreesegs);
  if (ret) {
   nilfs_msg(sb, KERN_WARNING,
      "error %d on discard request, turning discards off for the device",
      ret);
   nilfs_clear_opt(nilfs, DISCARD);
  }
 }

 out_unlock:
 sci->sc_freesegs = ((void*)0);
 sci->sc_nfreesegs = 0;
 nilfs_mdt_clear_shadow_map(nilfs->ns_dat);
 nilfs_transaction_unlock(sb);
 return err;
}
