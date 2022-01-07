
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_reclaim; } ;
struct page {scalar_t__ index; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_sb_info {int node_write; } ;
struct f2fs_io_info {int op_flags; int submitted; int io_type; scalar_t__ old_blkaddr; int new_blkaddr; struct writeback_control* io_wbc; int * encrypted_page; struct page* page; int op; int type; int ino; struct f2fs_sb_info* sbi; } ;
typedef scalar_t__ nid_t ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int DATA_GENERIC_ENHANCE ;
 int F2FS_DIRTY_NODES ;
 struct f2fs_sb_info* F2FS_P_SB (struct page*) ;
 scalar_t__ IS_DNODE (struct page*) ;
 int NOBARRIER ;
 int NODE ;
 scalar_t__ NULL_ADDR ;
 int REQ_FUA ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int SBI_CP_DISABLED ;
 int SBI_POR_DOING ;
 scalar_t__ WB_SYNC_NONE ;
 scalar_t__ __is_valid_data_blkaddr (scalar_t__) ;
 int dec_page_count (struct f2fs_sb_info*,int ) ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 unsigned int f2fs_add_fsync_node_entry (struct f2fs_sb_info*,struct page*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_do_write_node_page (scalar_t__,struct f2fs_io_info*) ;
 scalar_t__ f2fs_get_node_info (struct f2fs_sb_info*,scalar_t__,struct node_info*) ;
 scalar_t__ f2fs_in_warm_node_list (struct f2fs_sb_info*,struct page*) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,scalar_t__,int ) ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int ) ;
 int f2fs_submit_merged_write_cond (struct f2fs_sb_info*,int *,struct page*,int ,int ) ;
 int ino_of_node (struct page*) ;
 scalar_t__ is_cold_node (struct page*) ;
 int is_fsync_dnode (struct page*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ nid_of_node (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_node_addr (struct f2fs_sb_info*,struct node_info*,int ,int ) ;
 int set_page_writeback (struct page*) ;
 int test_opt (struct f2fs_sb_info*,int ) ;
 int trace_f2fs_writepage (struct page*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int wbc_to_write_flags (struct writeback_control*) ;

__attribute__((used)) static int __write_node_page(struct page *page, bool atomic, bool *submitted,
    struct writeback_control *wbc, bool do_balance,
    enum iostat_type io_type, unsigned int *seq_id)
{
 struct f2fs_sb_info *sbi = F2FS_P_SB(page);
 nid_t nid;
 struct node_info ni;
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .ino = ino_of_node(page),
  .type = NODE,
  .op = REQ_OP_WRITE,
  .op_flags = wbc_to_write_flags(wbc),
  .page = page,
  .encrypted_page = ((void*)0),
  .submitted = 0,
  .io_type = io_type,
  .io_wbc = wbc,
 };
 unsigned int seq;

 trace_f2fs_writepage(page, NODE);

 if (unlikely(f2fs_cp_error(sbi)))
  goto redirty_out;

 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  goto redirty_out;

 if (!is_sbi_flag_set(sbi, SBI_CP_DISABLED) &&
   wbc->sync_mode == WB_SYNC_NONE &&
   IS_DNODE(page) && is_cold_node(page))
  goto redirty_out;


 nid = nid_of_node(page);
 f2fs_bug_on(sbi, page->index != nid);

 if (f2fs_get_node_info(sbi, nid, &ni))
  goto redirty_out;

 if (wbc->for_reclaim) {
  if (!down_read_trylock(&sbi->node_write))
   goto redirty_out;
 } else {
  down_read(&sbi->node_write);
 }


 if (unlikely(ni.blk_addr == NULL_ADDR)) {
  ClearPageUptodate(page);
  dec_page_count(sbi, F2FS_DIRTY_NODES);
  up_read(&sbi->node_write);
  unlock_page(page);
  return 0;
 }

 if (__is_valid_data_blkaddr(ni.blk_addr) &&
  !f2fs_is_valid_blkaddr(sbi, ni.blk_addr,
     DATA_GENERIC_ENHANCE)) {
  up_read(&sbi->node_write);
  goto redirty_out;
 }

 if (atomic && !test_opt(sbi, NOBARRIER))
  fio.op_flags |= REQ_PREFLUSH | REQ_FUA;

 set_page_writeback(page);
 ClearPageError(page);

 if (f2fs_in_warm_node_list(sbi, page)) {
  seq = f2fs_add_fsync_node_entry(sbi, page);
  if (seq_id)
   *seq_id = seq;
 }

 fio.old_blkaddr = ni.blk_addr;
 f2fs_do_write_node_page(nid, &fio);
 set_node_addr(sbi, &ni, fio.new_blkaddr, is_fsync_dnode(page));
 dec_page_count(sbi, F2FS_DIRTY_NODES);
 up_read(&sbi->node_write);

 if (wbc->for_reclaim) {
  f2fs_submit_merged_write_cond(sbi, ((void*)0), page, 0, NODE);
  submitted = ((void*)0);
 }

 unlock_page(page);

 if (unlikely(f2fs_cp_error(sbi))) {
  f2fs_submit_merged_write(sbi, NODE);
  submitted = ((void*)0);
 }
 if (submitted)
  *submitted = fio.submitted;

 if (do_balance)
  f2fs_balance_fs(sbi, 0);
 return 0;

redirty_out:
 redirty_page_for_writepage(wbc, page);
 return AOP_WRITEPAGE_ACTIVATE;
}
