
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EXT4_GET_BLOCKS_CREATE ;
 int _ext4_get_block (struct inode*,int ,struct buffer_head*,int ) ;

int ext4_get_block(struct inode *inode, sector_t iblock,
     struct buffer_head *bh, int create)
{
 return _ext4_get_block(inode, iblock, bh,
          create ? EXT4_GET_BLOCKS_CREATE : 0);
}
