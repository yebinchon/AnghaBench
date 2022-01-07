
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct ext4_map_blocks {unsigned long m_lblk; int m_len; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int EFSCORRUPTED ;
 int ENOSPC ;
 int EXT4_ERROR_INODE (struct inode*,char*) ;
 int EXT4_GET_BLOCKS_CREATE ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int WARN_ON_ONCE (int) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext4_getblk (int *,struct inode*,unsigned long,int ) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int ) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_should_retry_alloc (TYPE_1__*,int*) ;
 int ext4_update_i_disksize (struct inode*,int) ;
 int i_size_write (struct inode*,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int memcpy (int ,void const*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int ext4_xattr_inode_write(handle_t *handle, struct inode *ea_inode,
      const void *buf, int bufsize)
{
 struct buffer_head *bh = ((void*)0);
 unsigned long block = 0;
 int blocksize = ea_inode->i_sb->s_blocksize;
 int max_blocks = (bufsize + blocksize - 1) >> ea_inode->i_blkbits;
 int csize, wsize = 0;
 int ret = 0;
 int retries = 0;

retry:
 while (ret >= 0 && ret < max_blocks) {
  struct ext4_map_blocks map;
  map.m_lblk = block += ret;
  map.m_len = max_blocks -= ret;

  ret = ext4_map_blocks(handle, ea_inode, &map,
          EXT4_GET_BLOCKS_CREATE);
  if (ret <= 0) {
   ext4_mark_inode_dirty(handle, ea_inode);
   if (ret == -ENOSPC &&
       ext4_should_retry_alloc(ea_inode->i_sb, &retries)) {
    ret = 0;
    goto retry;
   }
   break;
  }
 }

 if (ret < 0)
  return ret;

 block = 0;
 while (wsize < bufsize) {
  if (bh != ((void*)0))
   brelse(bh);
  csize = (bufsize - wsize) > blocksize ? blocksize :
        bufsize - wsize;
  bh = ext4_getblk(handle, ea_inode, block, 0);
  if (IS_ERR(bh))
   return PTR_ERR(bh);
  if (!bh) {
   WARN_ON_ONCE(1);
   EXT4_ERROR_INODE(ea_inode,
      "ext4_getblk() return bh = NULL");
   return -EFSCORRUPTED;
  }
  ret = ext4_journal_get_write_access(handle, bh);
  if (ret)
   goto out;

  memcpy(bh->b_data, buf, csize);
  set_buffer_uptodate(bh);
  ext4_handle_dirty_metadata(handle, ea_inode, bh);

  buf += csize;
  wsize += csize;
  block += 1;
 }

 inode_lock(ea_inode);
 i_size_write(ea_inode, wsize);
 ext4_update_i_disksize(ea_inode, wsize);
 inode_unlock(ea_inode);

 ext4_mark_inode_dirty(handle, ea_inode);

out:
 brelse(bh);

 return ret;
}
