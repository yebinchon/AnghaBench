
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EXT4_INODE_EXTENTS ;
 int ext4_ext_index_trans_blocks (struct inode*,int) ;
 int ext4_ind_trans_blocks (struct inode*,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int ext4_index_trans_blocks(struct inode *inode, int lblocks,
       int pextents)
{
 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  return ext4_ind_trans_blocks(inode, lblocks);
 return ext4_ext_index_trans_blocks(inode, pextents);
}
