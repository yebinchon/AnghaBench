
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_inode_info {int i_da_metadata_calc_len; scalar_t__ i_da_metadata_calc_last_lblock; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
typedef scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int s_blocksize; } ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int ext_depth (struct inode*) ;

int ext4_ext_calc_metadata_amount(struct inode *inode, ext4_lblk_t lblock)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 int idxs;

 idxs = ((inode->i_sb->s_blocksize - sizeof(struct ext4_extent_header))
  / sizeof(struct ext4_extent_idx));
 if (ei->i_da_metadata_calc_len &&
     ei->i_da_metadata_calc_last_lblock+1 == lblock) {
  int num = 0;

  if ((ei->i_da_metadata_calc_len % idxs) == 0)
   num++;
  if ((ei->i_da_metadata_calc_len % (idxs*idxs)) == 0)
   num++;
  if ((ei->i_da_metadata_calc_len % (idxs*idxs*idxs)) == 0) {
   num++;
   ei->i_da_metadata_calc_len = 0;
  } else
   ei->i_da_metadata_calc_len++;
  ei->i_da_metadata_calc_last_lblock++;
  return num;
 }





 ei->i_da_metadata_calc_len = 1;
 ei->i_da_metadata_calc_last_lblock = lblock;
 return ext_depth(inode) + 1;
}
