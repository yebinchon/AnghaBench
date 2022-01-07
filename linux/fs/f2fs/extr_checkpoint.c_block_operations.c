
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int for_reclaim; int nr_to_write; int sync_mode; } ;
struct f2fs_sb_info {int node_change; int * wb_sync_req; int node_write; TYPE_1__* sb; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {int s_umount; } ;


 int DEFAULT_RETRY_QUOTA_FLUSH_COUNT ;
 int DIR_INODE ;
 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_IMETA ;
 int F2FS_DIRTY_NODES ;
 int FS_CP_NODE_IO ;
 int LONG_MAX ;
 size_t NODE ;
 int SBI_QUOTA_NEED_FLUSH ;
 int SBI_QUOTA_SKIP_FLUSH ;
 int WB_SYNC_ALL ;
 scalar_t__ __need_flush_quota (struct f2fs_sb_info*) ;
 int __prepare_cp_block (struct f2fs_sb_info*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int cond_resched () ;
 int down_read_trylock (int *) ;
 int down_write (int *) ;
 int f2fs_lock_all (struct f2fs_sb_info*) ;
 int f2fs_quota_sync (TYPE_1__*,int) ;
 int f2fs_sync_dirty_inodes (struct f2fs_sb_info*,int ) ;
 int f2fs_sync_inode_meta (struct f2fs_sb_info*) ;
 int f2fs_sync_node_pages (struct f2fs_sb_info*,struct writeback_control*,int,int ) ;
 int f2fs_unlock_all (struct f2fs_sb_info*) ;
 scalar_t__ get_pages (struct f2fs_sb_info*,int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int block_operations(struct f2fs_sb_info *sbi)
{
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = LONG_MAX,
  .for_reclaim = 0,
 };
 struct blk_plug plug;
 int err = 0, cnt = 0;

 blk_start_plug(&plug);

retry_flush_quotas:
 f2fs_lock_all(sbi);
 if (__need_flush_quota(sbi)) {
  int locked;

  if (++cnt > DEFAULT_RETRY_QUOTA_FLUSH_COUNT) {
   set_sbi_flag(sbi, SBI_QUOTA_SKIP_FLUSH);
   set_sbi_flag(sbi, SBI_QUOTA_NEED_FLUSH);
   goto retry_flush_dents;
  }
  f2fs_unlock_all(sbi);


  locked = down_read_trylock(&sbi->sb->s_umount);
  f2fs_quota_sync(sbi->sb, -1);
  if (locked)
   up_read(&sbi->sb->s_umount);
  cond_resched();
  goto retry_flush_quotas;
 }

retry_flush_dents:

 if (get_pages(sbi, F2FS_DIRTY_DENTS)) {
  f2fs_unlock_all(sbi);
  err = f2fs_sync_dirty_inodes(sbi, DIR_INODE);
  if (err)
   goto out;
  cond_resched();
  goto retry_flush_quotas;
 }





 down_write(&sbi->node_change);

 if (get_pages(sbi, F2FS_DIRTY_IMETA)) {
  up_write(&sbi->node_change);
  f2fs_unlock_all(sbi);
  err = f2fs_sync_inode_meta(sbi);
  if (err)
   goto out;
  cond_resched();
  goto retry_flush_quotas;
 }

retry_flush_nodes:
 down_write(&sbi->node_write);

 if (get_pages(sbi, F2FS_DIRTY_NODES)) {
  up_write(&sbi->node_write);
  atomic_inc(&sbi->wb_sync_req[NODE]);
  err = f2fs_sync_node_pages(sbi, &wbc, 0, FS_CP_NODE_IO);
  atomic_dec(&sbi->wb_sync_req[NODE]);
  if (err) {
   up_write(&sbi->node_change);
   f2fs_unlock_all(sbi);
   goto out;
  }
  cond_resched();
  goto retry_flush_nodes;
 }





 __prepare_cp_block(sbi);
 up_write(&sbi->node_change);
out:
 blk_finish_plug(&plug);
 return err;
}
