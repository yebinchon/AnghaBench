
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct f2fs_sb_info {int s_encoding; struct f2fs_sb_info** write_io; int write_io_dummy; struct f2fs_sb_info* raw_super; scalar_t__ s_chksum_driver; struct f2fs_sb_info* ckpt; int * meta_inode; int * node_inode; int fsync_node_num; int umount_mutex; int discard_blks; } ;
struct cp_control {int reason; } ;
struct TYPE_2__ {struct f2fs_sb_info** s_qf_names; } ;


 int CP_TRIMMED ;
 int CP_UMOUNT ;
 int CP_UMOUNT_FLAG ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 struct f2fs_sb_info* F2FS_SB (struct super_block*) ;
 int MAXQUOTAS ;
 int NR_PAGE_TYPE ;
 int SBI_IS_DIRTY ;
 int crypto_free_shash (scalar_t__) ;
 int destroy_device_list (struct f2fs_sb_info*) ;
 int destroy_percpu_info (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 int f2fs_destroy_node_manager (struct f2fs_sb_info*) ;
 int f2fs_destroy_segment_manager (struct f2fs_sb_info*) ;
 int f2fs_destroy_stats (struct f2fs_sb_info*) ;
 int f2fs_flush_merged_writes (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_hw_should_discard (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_hw_support_discard (struct f2fs_sb_info*) ;
 int f2fs_issue_discard_timeout (struct f2fs_sb_info*) ;
 int f2fs_leave_shrinker (struct f2fs_sb_info*) ;
 int f2fs_quota_off_umount (struct super_block*) ;
 int f2fs_release_ino_entry (struct f2fs_sb_info*,int) ;
 int f2fs_unregister_sysfs (struct f2fs_sb_info*) ;
 int f2fs_wait_on_all_pages_writeback (struct f2fs_sb_info*) ;
 int f2fs_write_checkpoint (struct f2fs_sb_info*,struct cp_control*) ;
 int iput (int *) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;
 int kvfree (struct f2fs_sb_info*) ;
 int mempool_destroy (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int utf8_unload (int ) ;

__attribute__((used)) static void f2fs_put_super(struct super_block *sb)
{
 struct f2fs_sb_info *sbi = F2FS_SB(sb);
 int i;
 bool dropped;

 f2fs_quota_off_umount(sb);


 mutex_lock(&sbi->umount_mutex);






 if ((is_sbi_flag_set(sbi, SBI_IS_DIRTY) ||
   !is_set_ckpt_flags(sbi, CP_UMOUNT_FLAG))) {
  struct cp_control cpc = {
   .reason = CP_UMOUNT,
  };
  f2fs_write_checkpoint(sbi, &cpc);
 }


 dropped = f2fs_issue_discard_timeout(sbi);

 if ((f2fs_hw_support_discard(sbi) || f2fs_hw_should_discard(sbi)) &&
     !sbi->discard_blks && !dropped) {
  struct cp_control cpc = {
   .reason = CP_UMOUNT | CP_TRIMMED,
  };
  f2fs_write_checkpoint(sbi, &cpc);
 }





 f2fs_release_ino_entry(sbi, 1);

 f2fs_leave_shrinker(sbi);
 mutex_unlock(&sbi->umount_mutex);


 f2fs_flush_merged_writes(sbi);

 f2fs_wait_on_all_pages_writeback(sbi);

 f2fs_bug_on(sbi, sbi->fsync_node_num);

 iput(sbi->node_inode);
 sbi->node_inode = ((void*)0);

 iput(sbi->meta_inode);
 sbi->meta_inode = ((void*)0);





 f2fs_destroy_stats(sbi);


 f2fs_destroy_node_manager(sbi);
 f2fs_destroy_segment_manager(sbi);

 kvfree(sbi->ckpt);

 f2fs_unregister_sysfs(sbi);

 sb->s_fs_info = ((void*)0);
 if (sbi->s_chksum_driver)
  crypto_free_shash(sbi->s_chksum_driver);
 kvfree(sbi->raw_super);

 destroy_device_list(sbi);
 mempool_destroy(sbi->write_io_dummy);




 destroy_percpu_info(sbi);
 for (i = 0; i < NR_PAGE_TYPE; i++)
  kvfree(sbi->write_io[i]);



 kvfree(sbi);
}
