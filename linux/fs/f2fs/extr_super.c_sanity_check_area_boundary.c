
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int s_bdev; } ;
struct f2fs_super_block {int segment_count; int log_blocks_per_seg; int segment_count_main; int segment_count_ssa; int segment_count_nat; int segment_count_sit; int segment_count_ckpt; int main_blkaddr; int ssa_blkaddr; int nat_blkaddr; int sit_blkaddr; int cp_blkaddr; int segment0_blkaddr; } ;
struct f2fs_sb_info {struct super_block* sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ F2FS_SUPER_OFFSET ;
 int SBI_NEED_SB_WRITE ;
 int __f2fs_commit_super (struct buffer_head*,int *) ;
 scalar_t__ bdev_read_only (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 int f2fs_info (struct f2fs_sb_info*,char*,char*,scalar_t__,...) ;
 scalar_t__ f2fs_readonly (struct super_block*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int set_sbi_flag (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool sanity_check_area_boundary(struct f2fs_sb_info *sbi,
     struct buffer_head *bh)
{
 struct f2fs_super_block *raw_super = (struct f2fs_super_block *)
     (bh->b_data + F2FS_SUPER_OFFSET);
 struct super_block *sb = sbi->sb;
 u32 segment0_blkaddr = le32_to_cpu(raw_super->segment0_blkaddr);
 u32 cp_blkaddr = le32_to_cpu(raw_super->cp_blkaddr);
 u32 sit_blkaddr = le32_to_cpu(raw_super->sit_blkaddr);
 u32 nat_blkaddr = le32_to_cpu(raw_super->nat_blkaddr);
 u32 ssa_blkaddr = le32_to_cpu(raw_super->ssa_blkaddr);
 u32 main_blkaddr = le32_to_cpu(raw_super->main_blkaddr);
 u32 segment_count_ckpt = le32_to_cpu(raw_super->segment_count_ckpt);
 u32 segment_count_sit = le32_to_cpu(raw_super->segment_count_sit);
 u32 segment_count_nat = le32_to_cpu(raw_super->segment_count_nat);
 u32 segment_count_ssa = le32_to_cpu(raw_super->segment_count_ssa);
 u32 segment_count_main = le32_to_cpu(raw_super->segment_count_main);
 u32 segment_count = le32_to_cpu(raw_super->segment_count);
 u32 log_blocks_per_seg = le32_to_cpu(raw_super->log_blocks_per_seg);
 u64 main_end_blkaddr = main_blkaddr +
    (segment_count_main << log_blocks_per_seg);
 u64 seg_end_blkaddr = segment0_blkaddr +
    (segment_count << log_blocks_per_seg);

 if (segment0_blkaddr != cp_blkaddr) {
  f2fs_info(sbi, "Mismatch start address, segment0(%u) cp_blkaddr(%u)",
     segment0_blkaddr, cp_blkaddr);
  return 1;
 }

 if (cp_blkaddr + (segment_count_ckpt << log_blocks_per_seg) !=
       sit_blkaddr) {
  f2fs_info(sbi, "Wrong CP boundary, start(%u) end(%u) blocks(%u)",
     cp_blkaddr, sit_blkaddr,
     segment_count_ckpt << log_blocks_per_seg);
  return 1;
 }

 if (sit_blkaddr + (segment_count_sit << log_blocks_per_seg) !=
       nat_blkaddr) {
  f2fs_info(sbi, "Wrong SIT boundary, start(%u) end(%u) blocks(%u)",
     sit_blkaddr, nat_blkaddr,
     segment_count_sit << log_blocks_per_seg);
  return 1;
 }

 if (nat_blkaddr + (segment_count_nat << log_blocks_per_seg) !=
       ssa_blkaddr) {
  f2fs_info(sbi, "Wrong NAT boundary, start(%u) end(%u) blocks(%u)",
     nat_blkaddr, ssa_blkaddr,
     segment_count_nat << log_blocks_per_seg);
  return 1;
 }

 if (ssa_blkaddr + (segment_count_ssa << log_blocks_per_seg) !=
       main_blkaddr) {
  f2fs_info(sbi, "Wrong SSA boundary, start(%u) end(%u) blocks(%u)",
     ssa_blkaddr, main_blkaddr,
     segment_count_ssa << log_blocks_per_seg);
  return 1;
 }

 if (main_end_blkaddr > seg_end_blkaddr) {
  f2fs_info(sbi, "Wrong MAIN_AREA boundary, start(%u) end(%u) block(%u)",
     main_blkaddr,
     segment0_blkaddr +
     (segment_count << log_blocks_per_seg),
     segment_count_main << log_blocks_per_seg);
  return 1;
 } else if (main_end_blkaddr < seg_end_blkaddr) {
  int err = 0;
  char *res;


  raw_super->segment_count = cpu_to_le32((main_end_blkaddr -
    segment0_blkaddr) >> log_blocks_per_seg);

  if (f2fs_readonly(sb) || bdev_read_only(sb->s_bdev)) {
   set_sbi_flag(sbi, SBI_NEED_SB_WRITE);
   res = "internally";
  } else {
   err = __f2fs_commit_super(bh, ((void*)0));
   res = err ? "failed" : "done";
  }
  f2fs_info(sbi, "Fix alignment : %s, start(%u) end(%u) block(%u)",
     res, main_blkaddr,
     segment0_blkaddr +
     (segment_count << log_blocks_per_seg),
     segment_count_main << log_blocks_per_seg);
  if (err)
   return 1;
 }
 return 0;
}
