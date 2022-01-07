
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int * b_private; } ;
typedef int sector_t ;
typedef int ext4_io_end_t ;


 int ENOMEM ;
 int EXT4_GET_BLOCKS_IO_CREATE_EXT ;
 int GFP_KERNEL ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 int ext4_get_block_trans (struct inode*,int ,struct buffer_head*,int ) ;
 int * ext4_init_io_end (struct inode*,int ) ;
 int ext4_journal_current_handle () ;
 int ext4_set_io_unwritten_flag (struct inode*,int *) ;
 int set_buffer_defer_completion (struct buffer_head*) ;

__attribute__((used)) static int ext4_dio_get_block_unwritten_async(struct inode *inode,
  sector_t iblock, struct buffer_head *bh_result, int create)
{
 int ret;


 WARN_ON_ONCE(ext4_journal_current_handle());

 ret = ext4_get_block_trans(inode, iblock, bh_result,
       EXT4_GET_BLOCKS_IO_CREATE_EXT);
 if (!ret && buffer_unwritten(bh_result)) {
  if (!bh_result->b_private) {
   ext4_io_end_t *io_end;

   io_end = ext4_init_io_end(inode, GFP_KERNEL);
   if (!io_end)
    return -ENOMEM;
   bh_result->b_private = io_end;
   ext4_set_io_unwritten_flag(inode, io_end);
  }
  set_buffer_defer_completion(bh_result);
 }

 return ret;
}
