
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent {int ee_block; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef int ext4_fsblk_t ;


 int EXT4_SB (int ) ;
 int ext4_data_block_valid (int ,int ,int) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_valid_extent(struct inode *inode, struct ext4_extent *ext)
{
 ext4_fsblk_t block = ext4_ext_pblock(ext);
 int len = ext4_ext_get_actual_len(ext);
 ext4_lblk_t lblock = le32_to_cpu(ext->ee_block);






 if (lblock + len <= lblock)
  return 0;
 return ext4_data_block_valid(EXT4_SB(inode->i_sb), block, len);
}
