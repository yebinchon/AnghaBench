
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int GET_BLOCK_NO_HOLE ;
 int reiserfs_get_block (struct inode*,int ,struct buffer_head*,int ) ;

__attribute__((used)) static int reiserfs_get_block_create_0(struct inode *inode, sector_t block,
           struct buffer_head *bh_result,
           int create)
{
 return reiserfs_get_block(inode, block, bh_result, GET_BLOCK_NO_HOLE);
}
