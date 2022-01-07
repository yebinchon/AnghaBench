
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EXT4_GET_BLOCKS_IO_CREATE_EXT ;
 int _ext4_get_block (struct inode*,int ,struct buffer_head*,int ) ;
 int ext4_debug (char*,int ,int) ;

int ext4_get_block_unwritten(struct inode *inode, sector_t iblock,
        struct buffer_head *bh_result, int create)
{
 ext4_debug("ext4_get_block_unwritten: inode %lu, create flag %d\n",
     inode->i_ino, create);
 return _ext4_get_block(inode, iblock, bh_result,
          EXT4_GET_BLOCKS_IO_CREATE_EXT);
}
