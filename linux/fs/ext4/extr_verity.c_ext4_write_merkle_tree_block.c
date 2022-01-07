
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ext4_verity_metadata_pos (struct inode*) ;
 int pagecache_write (struct inode*,void const*,int,scalar_t__) ;

__attribute__((used)) static int ext4_write_merkle_tree_block(struct inode *inode, const void *buf,
     u64 index, int log_blocksize)
{
 loff_t pos = ext4_verity_metadata_pos(inode) + (index << log_blocksize);

 return pagecache_write(inode, buf, 1 << log_blocksize, pos);
}
