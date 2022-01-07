
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned int segs_per_sec; unsigned int blocks_per_seg; unsigned int log_blocks_per_seg; } ;


 unsigned int get_pages (struct f2fs_sb_info*,int) ;

__attribute__((used)) static inline int get_blocktype_secs(struct f2fs_sb_info *sbi, int block_type)
{
 unsigned int pages_per_sec = sbi->segs_per_sec * sbi->blocks_per_seg;
 unsigned int segs = (get_pages(sbi, block_type) + pages_per_sec - 1) >>
      sbi->log_blocks_per_seg;

 return segs / sbi->segs_per_sec;
}
