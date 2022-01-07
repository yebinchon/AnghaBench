
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int cur_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int DATA_GENERIC_ENHANCE ;
 int DATA_GENERIC_ENHANCE_READ ;
 unsigned int GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,int ) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,int ) ;
 int SBI_NEED_FSCK ;
 int WARN_ON (int) ;
 int f2fs_err (struct f2fs_sb_info*,char*,int ,int) ;
 int f2fs_test_bit (unsigned int,int ) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static bool __is_bitmap_valid(struct f2fs_sb_info *sbi, block_t blkaddr,
       int type)
{
 struct seg_entry *se;
 unsigned int segno, offset;
 bool exist;

 if (type != DATA_GENERIC_ENHANCE && type != DATA_GENERIC_ENHANCE_READ)
  return 1;

 segno = GET_SEGNO(sbi, blkaddr);
 offset = GET_BLKOFF_FROM_SEG0(sbi, blkaddr);
 se = get_seg_entry(sbi, segno);

 exist = f2fs_test_bit(offset, se->cur_valid_map);
 if (!exist && type == DATA_GENERIC_ENHANCE) {
  f2fs_err(sbi, "Inconsistent error blkaddr:%u, sit bitmap:%d",
    blkaddr, exist);
  set_sbi_flag(sbi, SBI_NEED_FSCK);
  WARN_ON(1);
 }
 return exist;
}
