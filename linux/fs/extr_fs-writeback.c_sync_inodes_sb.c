
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_writeback_work {int for_sync; int reason; int * done; int range_cyclic; int nr_pages; int sync_mode; struct super_block* sb; } ;
struct super_block {int s_umount; struct backing_dev_info* s_bdi; } ;
struct backing_dev_info {int dummy; } ;


 int DEFINE_WB_COMPLETION (int ,struct backing_dev_info*) ;
 int LONG_MAX ;
 int WARN_ON (int) ;
 int WB_REASON_SYNC ;
 int WB_SYNC_ALL ;
 int bdi_down_write_wb_switch_rwsem (struct backing_dev_info*) ;
 int bdi_split_work_to_wbs (struct backing_dev_info*,struct wb_writeback_work*,int) ;
 int bdi_up_write_wb_switch_rwsem (struct backing_dev_info*) ;
 int done ;
 struct backing_dev_info noop_backing_dev_info ;
 int rwsem_is_locked (int *) ;
 int wait_sb_inodes (struct super_block*) ;
 int wb_wait_for_completion (int *) ;

void sync_inodes_sb(struct super_block *sb)
{
 struct backing_dev_info *bdi = sb->s_bdi;
 DEFINE_WB_COMPLETION(done, bdi);
 struct wb_writeback_work work = {
  .sb = sb,
  .sync_mode = WB_SYNC_ALL,
  .nr_pages = LONG_MAX,
  .range_cyclic = 0,
  .done = &done,
  .reason = WB_REASON_SYNC,
  .for_sync = 1,
 };






 if (bdi == &noop_backing_dev_info)
  return;
 WARN_ON(!rwsem_is_locked(&sb->s_umount));


 bdi_down_write_wb_switch_rwsem(bdi);
 bdi_split_work_to_wbs(bdi, &work, 0);
 wb_wait_for_completion(&done);
 bdi_up_write_wb_switch_rwsem(bdi);

 wait_sb_inodes(sb);
}
