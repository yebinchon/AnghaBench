
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef int nid_t ;


 struct f2fs_sb_info* F2FS_P_SB (struct page*) ;
 int NIDS_PER_BLOCK ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int f2fs_ra_node_page (struct f2fs_sb_info*,int ) ;
 int get_nid (struct page*,int,int) ;
 int min (int,int ) ;

__attribute__((used)) static void f2fs_ra_node_pages(struct page *parent, int start, int n)
{
 struct f2fs_sb_info *sbi = F2FS_P_SB(parent);
 struct blk_plug plug;
 int i, end;
 nid_t nid;

 blk_start_plug(&plug);


 end = start + n;
 end = min(end, NIDS_PER_BLOCK);
 for (i = start; i < end; i++) {
  nid = get_nid(parent, i, 0);
  f2fs_ra_node_page(sbi, nid);
 }

 blk_finish_plug(&plug);
}
