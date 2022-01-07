
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {unsigned int sb_fs_size; } ;


 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int hpfs_search_hotfix_map_for_range (struct super_block*,unsigned int,int) ;
 int sb_breadahead (struct super_block*,unsigned int) ;
 struct buffer_head* sb_find_get_block (struct super_block*,unsigned int) ;
 scalar_t__ unlikely (int) ;

void hpfs_prefetch_sectors(struct super_block *s, unsigned secno, int n)
{
 struct buffer_head *bh;
 struct blk_plug plug;

 if (n <= 0 || unlikely(secno >= hpfs_sb(s)->sb_fs_size))
  return;

 if (unlikely(hpfs_search_hotfix_map_for_range(s, secno, n) != n))
  return;

 bh = sb_find_get_block(s, secno);
 if (bh) {
  if (buffer_uptodate(bh)) {
   brelse(bh);
   return;
  }
  brelse(bh);
 };

 blk_start_plug(&plug);
 while (n > 0) {
  if (unlikely(secno >= hpfs_sb(s)->sb_fs_size))
   break;
  sb_breadahead(s, secno);
  secno++;
  n--;
 }
 blk_finish_plug(&plug);
}
