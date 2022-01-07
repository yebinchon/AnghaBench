
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int EFBIG ;
 int _get_block_create_0 (struct inode*,int ,struct buffer_head*,int ) ;
 int file_capable (struct inode*,int ) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;

__attribute__((used)) static int reiserfs_bmap(struct inode *inode, sector_t block,
    struct buffer_head *bh_result, int create)
{
 if (!file_capable(inode, block))
  return -EFBIG;

 reiserfs_write_lock(inode->i_sb);

 _get_block_create_0(inode, block, bh_result, 0);
 reiserfs_write_unlock(inode->i_sb);
 return 0;
}
