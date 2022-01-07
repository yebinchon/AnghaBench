
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ max_file_blocks; } ;


 int EFBIG ;
 int F2FS_GET_BLOCK_BMAP ;
 TYPE_1__* F2FS_I_SB (struct inode*) ;
 int NO_CHECK_TYPE ;
 int __get_data_block (struct inode*,scalar_t__,struct buffer_head*,int,int ,int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_data_block_bmap(struct inode *inode, sector_t iblock,
   struct buffer_head *bh_result, int create)
{

 if (unlikely(iblock >= F2FS_I_SB(inode)->max_file_blocks))
  return -EFBIG;

 return __get_data_block(inode, iblock, bh_result, create,
      F2FS_GET_BLOCK_BMAP, ((void*)0),
      NO_CHECK_TYPE, create);
}
