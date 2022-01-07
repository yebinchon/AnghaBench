
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EXT4_GET_BLOCKS_CREATE ;
 int WARN_ON_ONCE (int ) ;
 int _ext4_get_block (struct inode*,int ,struct buffer_head*,int ) ;
 int ext4_get_block_trans (struct inode*,int ,struct buffer_head*,int ) ;
 int ext4_journal_current_handle () ;

int ext4_dio_get_block(struct inode *inode, sector_t iblock,
         struct buffer_head *bh, int create)
{

 WARN_ON_ONCE(ext4_journal_current_handle());

 if (!create)
  return _ext4_get_block(inode, iblock, bh, 0);
 return ext4_get_block_trans(inode, iblock, bh, EXT4_GET_BLOCKS_CREATE);
}
