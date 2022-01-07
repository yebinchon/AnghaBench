
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; } ;


 int BLK_RW_ASYNC ;
 int ENOMEM ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 int HZ ;
 int cond_resched () ;
 int congestion_wait (int ,int) ;
 int ext4_es_remove_extent (struct inode*,int,scalar_t__) ;
 int ext4_ext_remove_space (struct inode*,int,scalar_t__) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;

int ext4_ext_truncate(handle_t *handle, struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 ext4_lblk_t last_block;
 int err = 0;
 EXT4_I(inode)->i_disksize = inode->i_size;
 err = ext4_mark_inode_dirty(handle, inode);
 if (err)
  return err;

 last_block = (inode->i_size + sb->s_blocksize - 1)
   >> EXT4_BLOCK_SIZE_BITS(sb);
retry:
 err = ext4_es_remove_extent(inode, last_block,
        EXT_MAX_BLOCKS - last_block);
 if (err == -ENOMEM) {
  cond_resched();
  congestion_wait(BLK_RW_ASYNC, HZ/50);
  goto retry;
 }
 if (err)
  return err;
 return ext4_ext_remove_space(inode, last_block, EXT_MAX_BLOCKS - 1);
}
