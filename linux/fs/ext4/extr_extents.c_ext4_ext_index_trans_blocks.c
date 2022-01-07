
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext_depth (struct inode*) ;

int ext4_ext_index_trans_blocks(struct inode *inode, int extents)
{
 int index;
 int depth;


 if (ext4_has_inline_data(inode))
  return 1;

 depth = ext_depth(inode);

 if (extents <= 1)
  index = depth * 2;
 else
  index = depth * 3;

 return index;
}
