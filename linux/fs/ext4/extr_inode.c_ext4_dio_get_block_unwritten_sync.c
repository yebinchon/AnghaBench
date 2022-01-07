
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EXT4_GET_BLOCKS_IO_CREATE_EXT ;
 int EXT4_STATE_DIO_UNWRITTEN ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 int ext4_get_block_trans (struct inode*,int ,struct buffer_head*,int ) ;
 int ext4_journal_current_handle () ;
 int ext4_set_inode_state (struct inode*,int ) ;

__attribute__((used)) static int ext4_dio_get_block_unwritten_sync(struct inode *inode,
  sector_t iblock, struct buffer_head *bh_result, int create)
{
 int ret;


 WARN_ON_ONCE(ext4_journal_current_handle());

 ret = ext4_get_block_trans(inode, iblock, bh_result,
       EXT4_GET_BLOCKS_IO_CREATE_EXT);






 if (!ret && buffer_unwritten(bh_result))
  ext4_set_inode_state(inode, EXT4_STATE_DIO_UNWRITTEN);

 return ret;
}
