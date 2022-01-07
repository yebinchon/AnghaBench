
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_summary {int nid; } ;
struct f2fs_sb_info {int blocks_per_seg; int * wb_sync_req; } ;
typedef int nid_t ;
typedef scalar_t__ block_t ;


 int BG_GC ;
 int FG_GC ;
 scalar_t__ IS_ERR (struct page*) ;
 int META_NAT ;
 int NAT_BLOCK_OFFSET (int ) ;
 size_t NODE ;
 scalar_t__ START_BLOCK (struct f2fs_sb_info*,unsigned int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ check_valid_map (struct f2fs_sb_info*,unsigned int,int) ;
 scalar_t__ f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,int ) ;
 int f2fs_move_node_page (struct page*,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_ra_meta_pages (struct f2fs_sb_info*,int ,int,int ,int) ;
 int f2fs_ra_node_page (struct f2fs_sb_info*,int ) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 int le32_to_cpu (int ) ;
 int stat_inc_node_blk_count (struct f2fs_sb_info*,int,int) ;

__attribute__((used)) static int gc_node_segment(struct f2fs_sb_info *sbi,
  struct f2fs_summary *sum, unsigned int segno, int gc_type)
{
 struct f2fs_summary *entry;
 block_t start_addr;
 int off;
 int phase = 0;
 bool fggc = (gc_type == FG_GC);
 int submitted = 0;

 start_addr = START_BLOCK(sbi, segno);

next_step:
 entry = sum;

 if (fggc && phase == 2)
  atomic_inc(&sbi->wb_sync_req[NODE]);

 for (off = 0; off < sbi->blocks_per_seg; off++, entry++) {
  nid_t nid = le32_to_cpu(entry->nid);
  struct page *node_page;
  struct node_info ni;
  int err;


  if (gc_type == BG_GC && has_not_enough_free_secs(sbi, 0, 0))
   return submitted;

  if (check_valid_map(sbi, segno, off) == 0)
   continue;

  if (phase == 0) {
   f2fs_ra_meta_pages(sbi, NAT_BLOCK_OFFSET(nid), 1,
       META_NAT, 1);
   continue;
  }

  if (phase == 1) {
   f2fs_ra_node_page(sbi, nid);
   continue;
  }


  node_page = f2fs_get_node_page(sbi, nid);
  if (IS_ERR(node_page))
   continue;


  if (check_valid_map(sbi, segno, off) == 0) {
   f2fs_put_page(node_page, 1);
   continue;
  }

  if (f2fs_get_node_info(sbi, nid, &ni)) {
   f2fs_put_page(node_page, 1);
   continue;
  }

  if (ni.blk_addr != start_addr + off) {
   f2fs_put_page(node_page, 1);
   continue;
  }

  err = f2fs_move_node_page(node_page, gc_type);
  if (!err && gc_type == FG_GC)
   submitted++;
  stat_inc_node_blk_count(sbi, 1, gc_type);
 }

 if (++phase < 3)
  goto next_step;

 if (fggc)
  atomic_dec(&sbi->wb_sync_req[NODE]);
 return submitted;
}
