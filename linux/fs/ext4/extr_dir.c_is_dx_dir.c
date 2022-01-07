
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;


 int EXT4_INODE_INDEX ;
 scalar_t__ ext4_has_feature_dir_index (struct super_block*) ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int is_dx_dir(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 if (ext4_has_feature_dir_index(inode->i_sb) &&
     ((ext4_test_inode_flag(inode, EXT4_INODE_INDEX)) ||
      ((inode->i_size >> sb->s_blocksize_bits) == 1) ||
      ext4_has_inline_data(inode)))
  return 1;

 return 0;
}
