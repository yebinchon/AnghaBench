
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_write_hint; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int F2FS_GET_BLOCK_DIO ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 int __get_data_block (struct inode*,int ,struct buffer_head*,int,int ,int *,int ,int) ;
 int f2fs_rw_hint_to_seg_type (int ) ;

__attribute__((used)) static int get_data_block_dio_write(struct inode *inode, sector_t iblock,
   struct buffer_head *bh_result, int create)
{
 return __get_data_block(inode, iblock, bh_result, create,
    F2FS_GET_BLOCK_DIO, ((void*)0),
    f2fs_rw_hint_to_seg_type(inode->i_write_hint),
    IS_SWAPFILE(inode) ? 0 : 1);
}
