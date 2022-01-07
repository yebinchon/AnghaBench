
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent_idx {int dummy; } ;
typedef int ext4_fsblk_t ;


 int EXT4_SB (int ) ;
 int ext4_data_block_valid (int ,int ,int) ;
 int ext4_idx_pblock (struct ext4_extent_idx*) ;

__attribute__((used)) static int ext4_valid_extent_idx(struct inode *inode,
    struct ext4_extent_idx *ext_idx)
{
 ext4_fsblk_t block = ext4_idx_pblock(ext_idx);

 return ext4_data_block_valid(EXT4_SB(inode->i_sb), block, 1);
}
