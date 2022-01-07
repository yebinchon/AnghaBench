
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext4_meta_trans_blocks (struct inode*,int,int) ;

int ext4_chunk_trans_blocks(struct inode *inode, int nrblocks)
{
 return ext4_meta_trans_blocks(inode, nrblocks, 1);
}
