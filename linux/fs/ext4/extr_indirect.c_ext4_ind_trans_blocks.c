
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int DIV_ROUND_UP (int,int ) ;
 int EXT4_ADDR_PER_BLOCK (int ) ;

int ext4_ind_trans_blocks(struct inode *inode, int nrblocks)
{





 return DIV_ROUND_UP(nrblocks, EXT4_ADDR_PER_BLOCK(inode->i_sb)) + 4;
}
