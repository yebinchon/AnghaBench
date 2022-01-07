
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_dir_entry {int rec_len; } ;
struct dx_root_info {int info_length; scalar_t__ reserved_zero; } ;
struct dx_countlimit {int dummy; } ;


 int EXT4_BLOCK_SIZE (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static struct dx_countlimit *get_dx_countlimit(struct inode *inode,
            struct ext4_dir_entry *dirent,
            int *offset)
{
 struct ext4_dir_entry *dp;
 struct dx_root_info *root;
 int count_offset;

 if (le16_to_cpu(dirent->rec_len) == EXT4_BLOCK_SIZE(inode->i_sb))
  count_offset = 8;
 else if (le16_to_cpu(dirent->rec_len) == 12) {
  dp = (struct ext4_dir_entry *)(((void *)dirent) + 12);
  if (le16_to_cpu(dp->rec_len) !=
      EXT4_BLOCK_SIZE(inode->i_sb) - 12)
   return ((void*)0);
  root = (struct dx_root_info *)(((void *)dp + 12));
  if (root->reserved_zero ||
      root->info_length != sizeof(struct dx_root_info))
   return ((void*)0);
  count_offset = 32;
 } else
  return ((void*)0);

 if (offset)
  *offset = count_offset;
 return (struct dx_countlimit *)(((void *)dirent) + count_offset);
}
