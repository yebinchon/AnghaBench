
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct gc_inode_list {int dummy; } ;
struct f2fs_summary_block {int entries; int footer; } ;
struct f2fs_sb_info {int migration_granularity; unsigned int* next_victim_seg; int stat_info; int segs_per_sec; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int DATA ;
 int FG_GC ;
 int GET_SUM_BLOCK (struct f2fs_sb_info*,unsigned int) ;
 unsigned char GET_SUM_TYPE (int *) ;
 scalar_t__ IS_DATASEG (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int META_SSA ;
 int NODE ;
 int PTR_ERR (struct page*) ;
 int PageUptodate (struct page*) ;
 int SBI_NEED_FSCK ;
 unsigned char SUM_TYPE_DATA ;
 unsigned char SUM_TYPE_NODE ;
 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_err (struct f2fs_sb_info*,char*,unsigned int,unsigned char,unsigned char) ;
 struct page* f2fs_get_sum_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_ra_meta_pages (struct f2fs_sb_info*,int ,unsigned int,int ,int) ;
 int f2fs_stop_checkpoint (struct f2fs_sb_info*,int) ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int ) ;
 struct page* find_get_page (int ,int ) ;
 scalar_t__ gc_data_segment (struct f2fs_sb_info*,int ,struct gc_inode_list*,unsigned int,int) ;
 scalar_t__ gc_node_segment (struct f2fs_sb_info*,int ,unsigned int,int) ;
 TYPE_1__* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 scalar_t__ get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;
 struct f2fs_summary_block* page_address (struct page*) ;
 unsigned int rounddown (unsigned int,int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;
 int stat_inc_call_count (int ) ;
 int stat_inc_seg_count (struct f2fs_sb_info*,unsigned char,int) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int do_garbage_collect(struct f2fs_sb_info *sbi,
    unsigned int start_segno,
    struct gc_inode_list *gc_list, int gc_type)
{
 struct page *sum_page;
 struct f2fs_summary_block *sum;
 struct blk_plug plug;
 unsigned int segno = start_segno;
 unsigned int end_segno = start_segno + sbi->segs_per_sec;
 int seg_freed = 0, migrated = 0;
 unsigned char type = IS_DATASEG(get_seg_entry(sbi, segno)->type) ?
      SUM_TYPE_DATA : SUM_TYPE_NODE;
 int submitted = 0;

 if (__is_large_section(sbi))
  end_segno = rounddown(end_segno, sbi->segs_per_sec);


 if (__is_large_section(sbi))
  f2fs_ra_meta_pages(sbi, GET_SUM_BLOCK(sbi, segno),
     end_segno - segno, META_SSA, 1);


 while (segno < end_segno) {
  sum_page = f2fs_get_sum_page(sbi, segno++);
  if (IS_ERR(sum_page)) {
   int err = PTR_ERR(sum_page);

   end_segno = segno - 1;
   for (segno = start_segno; segno < end_segno; segno++) {
    sum_page = find_get_page(META_MAPPING(sbi),
      GET_SUM_BLOCK(sbi, segno));
    f2fs_put_page(sum_page, 0);
    f2fs_put_page(sum_page, 0);
   }
   return err;
  }
  unlock_page(sum_page);
 }

 blk_start_plug(&plug);

 for (segno = start_segno; segno < end_segno; segno++) {


  sum_page = find_get_page(META_MAPPING(sbi),
     GET_SUM_BLOCK(sbi, segno));
  f2fs_put_page(sum_page, 0);

  if (get_valid_blocks(sbi, segno, 0) == 0)
   goto freed;
  if (__is_large_section(sbi) &&
    migrated >= sbi->migration_granularity)
   goto skip;
  if (!PageUptodate(sum_page) || unlikely(f2fs_cp_error(sbi)))
   goto skip;

  sum = page_address(sum_page);
  if (type != GET_SUM_TYPE((&sum->footer))) {
   f2fs_err(sbi, "Inconsistent segment (%u) type [%d, %d] in SSA and SIT",
     segno, type, GET_SUM_TYPE((&sum->footer)));
   set_sbi_flag(sbi, SBI_NEED_FSCK);
   f2fs_stop_checkpoint(sbi, 0);
   goto skip;
  }
  if (type == SUM_TYPE_NODE)
   submitted += gc_node_segment(sbi, sum->entries, segno,
        gc_type);
  else
   submitted += gc_data_segment(sbi, sum->entries, gc_list,
       segno, gc_type);

  stat_inc_seg_count(sbi, type, gc_type);

freed:
  if (gc_type == FG_GC &&
    get_valid_blocks(sbi, segno, 0) == 0)
   seg_freed++;
  migrated++;

  if (__is_large_section(sbi) && segno + 1 < end_segno)
   sbi->next_victim_seg[gc_type] = segno + 1;
skip:
  f2fs_put_page(sum_page, 0);
 }

 if (submitted)
  f2fs_submit_merged_write(sbi,
    (type == SUM_TYPE_NODE) ? NODE : DATA);

 blk_finish_plug(&plug);

 stat_inc_call_count(sbi->stat_info);

 return seg_freed;
}
