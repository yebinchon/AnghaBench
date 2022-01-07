
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct f2fs_checkpoint {int cp_pack_total_block_count; } ;
typedef int block_t ;


 int f2fs_put_page (struct page*,int) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,int) ;
 int get_checkpoint_version (struct f2fs_sb_info*,int ,struct f2fs_checkpoint**,struct page**,unsigned long long*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static struct page *validate_checkpoint(struct f2fs_sb_info *sbi,
    block_t cp_addr, unsigned long long *version)
{
 struct page *cp_page_1 = ((void*)0), *cp_page_2 = ((void*)0);
 struct f2fs_checkpoint *cp_block = ((void*)0);
 unsigned long long cur_version = 0, pre_version = 0;
 int err;

 err = get_checkpoint_version(sbi, cp_addr, &cp_block,
     &cp_page_1, version);
 if (err)
  return ((void*)0);

 if (le32_to_cpu(cp_block->cp_pack_total_block_count) >
     sbi->blocks_per_seg) {
  f2fs_warn(sbi, "invalid cp_pack_total_block_count:%u",
     le32_to_cpu(cp_block->cp_pack_total_block_count));
  goto invalid_cp;
 }
 pre_version = *version;

 cp_addr += le32_to_cpu(cp_block->cp_pack_total_block_count) - 1;
 err = get_checkpoint_version(sbi, cp_addr, &cp_block,
     &cp_page_2, version);
 if (err)
  goto invalid_cp;
 cur_version = *version;

 if (cur_version == pre_version) {
  *version = cur_version;
  f2fs_put_page(cp_page_2, 1);
  return cp_page_1;
 }
 f2fs_put_page(cp_page_2, 1);
invalid_cp:
 f2fs_put_page(cp_page_1, 1);
 return ((void*)0);
}
