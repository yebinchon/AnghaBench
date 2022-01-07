
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_writeback_work {int tagged_writepages; unsigned long nr_pages; int reason; int * done; int sync_mode; struct super_block* sb; } ;
struct super_block {struct backing_dev_info* s_bdi; int s_umount; } ;
struct backing_dev_info {int dummy; } ;
typedef enum wb_reason { ____Placeholder_wb_reason } wb_reason ;


 int DEFINE_WB_COMPLETION (int ,struct backing_dev_info*) ;
 int WARN_ON (int) ;
 int WB_SYNC_NONE ;
 int bdi_has_dirty_io (struct backing_dev_info*) ;
 int bdi_split_work_to_wbs (struct backing_dev_info*,struct wb_writeback_work*,int) ;
 int done ;
 struct backing_dev_info noop_backing_dev_info ;
 int rwsem_is_locked (int *) ;
 int wb_wait_for_completion (int *) ;

__attribute__((used)) static void __writeback_inodes_sb_nr(struct super_block *sb, unsigned long nr,
         enum wb_reason reason, bool skip_if_busy)
{
 struct backing_dev_info *bdi = sb->s_bdi;
 DEFINE_WB_COMPLETION(done, bdi);
 struct wb_writeback_work work = {
  .sb = sb,
  .sync_mode = WB_SYNC_NONE,
  .tagged_writepages = 1,
  .done = &done,
  .nr_pages = nr,
  .reason = reason,
 };

 if (!bdi_has_dirty_io(bdi) || bdi == &noop_backing_dev_info)
  return;
 WARN_ON(!rwsem_is_locked(&sb->s_umount));

 bdi_split_work_to_wbs(sb->s_bdi, &work, skip_if_busy);
 wb_wait_for_completion(&done);
}
