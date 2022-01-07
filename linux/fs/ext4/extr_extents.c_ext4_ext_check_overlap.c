
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_extent {void* ee_len; int ee_block; } ;
struct ext4_ext_path {TYPE_1__* p_ext; } ;
typedef scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int ee_block; } ;


 scalar_t__ EXT4_LBLK_CMASK (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 void* cpu_to_le16 (scalar_t__) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 unsigned int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int ext4_ext_check_overlap(struct ext4_sb_info *sbi,
        struct inode *inode,
        struct ext4_extent *newext,
        struct ext4_ext_path *path)
{
 ext4_lblk_t b1, b2;
 unsigned int depth, len1;
 unsigned int ret = 0;

 b1 = le32_to_cpu(newext->ee_block);
 len1 = ext4_ext_get_actual_len(newext);
 depth = ext_depth(inode);
 if (!path[depth].p_ext)
  goto out;
 b2 = EXT4_LBLK_CMASK(sbi, le32_to_cpu(path[depth].p_ext->ee_block));





 if (b2 < b1) {
  b2 = ext4_ext_next_allocated_block(path);
  if (b2 == EXT_MAX_BLOCKS)
   goto out;
  b2 = EXT4_LBLK_CMASK(sbi, b2);
 }


 if (b1 + len1 < b1) {
  len1 = EXT_MAX_BLOCKS - b1;
  newext->ee_len = cpu_to_le16(len1);
  ret = 1;
 }


 if (b1 + len1 > b2) {
  newext->ee_len = cpu_to_le16(b2 - b1);
  ret = 1;
 }
out:
 return ret;
}
