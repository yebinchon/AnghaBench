
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; int pages_skipped; int nr_to_write; } ;
struct f2fs_sb_info {int * wb_sync_req; } ;
struct blk_plug {int dummy; } ;
struct address_space {int host; } ;


 int F2FS_DIRTY_NODES ;
 struct f2fs_sb_info* F2FS_M_SB (struct address_space*) ;
 int FS_NODE_IO ;
 size_t NODE ;
 int SBI_POR_DOING ;
 scalar_t__ WB_SYNC_ALL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int f2fs_balance_fs_bg (struct f2fs_sb_info*) ;
 int f2fs_sync_node_pages (struct f2fs_sb_info*,struct writeback_control*,int,int ) ;
 scalar_t__ get_pages (struct f2fs_sb_info*,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int max (long,int ) ;
 scalar_t__ nr_pages_to_skip (struct f2fs_sb_info*,size_t) ;
 long nr_pages_to_write (struct f2fs_sb_info*,size_t,struct writeback_control*) ;
 int trace_f2fs_writepages (int ,struct writeback_control*,size_t) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_write_node_pages(struct address_space *mapping,
       struct writeback_control *wbc)
{
 struct f2fs_sb_info *sbi = F2FS_M_SB(mapping);
 struct blk_plug plug;
 long diff;

 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  goto skip_write;


 f2fs_balance_fs_bg(sbi);


 if (wbc->sync_mode != WB_SYNC_ALL &&
   get_pages(sbi, F2FS_DIRTY_NODES) <
     nr_pages_to_skip(sbi, NODE))
  goto skip_write;

 if (wbc->sync_mode == WB_SYNC_ALL)
  atomic_inc(&sbi->wb_sync_req[NODE]);
 else if (atomic_read(&sbi->wb_sync_req[NODE]))
  goto skip_write;

 trace_f2fs_writepages(mapping->host, wbc, NODE);

 diff = nr_pages_to_write(sbi, NODE, wbc);
 blk_start_plug(&plug);
 f2fs_sync_node_pages(sbi, wbc, 1, FS_NODE_IO);
 blk_finish_plug(&plug);
 wbc->nr_to_write = max((long)0, wbc->nr_to_write - diff);

 if (wbc->sync_mode == WB_SYNC_ALL)
  atomic_dec(&sbi->wb_sync_req[NODE]);
 return 0;

skip_write:
 wbc->pages_skipped += get_pages(sbi, F2FS_DIRTY_NODES);
 trace_f2fs_writepages(mapping->host, wbc, NODE);
 return 0;
}
