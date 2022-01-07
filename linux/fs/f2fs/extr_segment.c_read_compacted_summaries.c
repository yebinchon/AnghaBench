
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct f2fs_checkpoint {scalar_t__* alloc_type; int * cur_data_blkoff; int * cur_data_segno; } ;
struct curseg_info {unsigned int next_segno; scalar_t__ alloc_type; unsigned short next_blkoff; TYPE_1__* sum_blk; int journal; } ;
typedef int block_t ;
struct TYPE_2__ {struct f2fs_summary* entries; } ;


 int CURSEG_COLD_DATA ;
 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 struct f2fs_checkpoint* F2FS_CKPT (struct f2fs_sb_info*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 scalar_t__ SSR ;
 scalar_t__ SUMMARY_SIZE ;
 scalar_t__ SUM_FOOTER_SIZE ;
 int SUM_JOURNAL_SIZE ;
 struct page* f2fs_get_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 unsigned short le16_to_cpu (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ page_address (struct page*) ;
 int reset_curseg (struct f2fs_sb_info*,int,int ) ;
 int start_sum_block (struct f2fs_sb_info*) ;

__attribute__((used)) static int read_compacted_summaries(struct f2fs_sb_info *sbi)
{
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
 struct curseg_info *seg_i;
 unsigned char *kaddr;
 struct page *page;
 block_t start;
 int i, j, offset;

 start = start_sum_block(sbi);

 page = f2fs_get_meta_page(sbi, start++);
 if (IS_ERR(page))
  return PTR_ERR(page);
 kaddr = (unsigned char *)page_address(page);


 seg_i = CURSEG_I(sbi, CURSEG_HOT_DATA);
 memcpy(seg_i->journal, kaddr, SUM_JOURNAL_SIZE);


 seg_i = CURSEG_I(sbi, CURSEG_COLD_DATA);
 memcpy(seg_i->journal, kaddr + SUM_JOURNAL_SIZE, SUM_JOURNAL_SIZE);
 offset = 2 * SUM_JOURNAL_SIZE;


 for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
  unsigned short blk_off;
  unsigned int segno;

  seg_i = CURSEG_I(sbi, i);
  segno = le32_to_cpu(ckpt->cur_data_segno[i]);
  blk_off = le16_to_cpu(ckpt->cur_data_blkoff[i]);
  seg_i->next_segno = segno;
  reset_curseg(sbi, i, 0);
  seg_i->alloc_type = ckpt->alloc_type[i];
  seg_i->next_blkoff = blk_off;

  if (seg_i->alloc_type == SSR)
   blk_off = sbi->blocks_per_seg;

  for (j = 0; j < blk_off; j++) {
   struct f2fs_summary *s;
   s = (struct f2fs_summary *)(kaddr + offset);
   seg_i->sum_blk->entries[j] = *s;
   offset += SUMMARY_SIZE;
   if (offset + SUMMARY_SIZE <= PAGE_SIZE -
      SUM_FOOTER_SIZE)
    continue;

   f2fs_put_page(page, 1);
   page = ((void*)0);

   page = f2fs_get_meta_page(sbi, start++);
   if (IS_ERR(page))
    return PTR_ERR(page);
   kaddr = (unsigned char *)page_address(page);
   offset = 0;
  }
 }
 f2fs_put_page(page, 1);
 return 0;
}
