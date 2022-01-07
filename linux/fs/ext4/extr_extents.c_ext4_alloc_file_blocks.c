
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; int i_size; int i_sb; int i_ctime; int i_mtime; int i_ino; } ;
struct file {int dummy; } ;
struct ext4_map_blocks {scalar_t__ m_lblk; scalar_t__ m_len; } ;
typedef int loff_t ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int EXT4_GET_BLOCKS_NO_NORMALIZE ;
 int EXT4_HT_MAP_BLOCKS ;
 int EXT4_INODE_EOFBLOCKS ;
 int EXT4_INODE_EXTENTS ;
 scalar_t__ EXT_UNWRITTEN_MAX_LEN ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int current_time (struct inode*) ;
 unsigned int ext4_chunk_trans_blocks (struct inode*,scalar_t__) ;
 int ext4_debug (char*,int ,scalar_t__,scalar_t__,int) ;
 int * ext4_journal_start (struct inode*,int ,unsigned int) ;
 int ext4_journal_stop (int *) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 scalar_t__ ext4_should_retry_alloc (int ,int*) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 int ext4_update_inode_size (struct inode*,int) ;
 int ext_depth (struct inode*) ;
 struct inode* file_inode (struct file*) ;

__attribute__((used)) static int ext4_alloc_file_blocks(struct file *file, ext4_lblk_t offset,
      ext4_lblk_t len, loff_t new_size,
      int flags)
{
 struct inode *inode = file_inode(file);
 handle_t *handle;
 int ret = 0;
 int ret2 = 0;
 int retries = 0;
 int depth = 0;
 struct ext4_map_blocks map;
 unsigned int credits;
 loff_t epos;

 BUG_ON(!ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS));
 map.m_lblk = offset;
 map.m_len = len;





 if (len <= EXT_UNWRITTEN_MAX_LEN)
  flags |= EXT4_GET_BLOCKS_NO_NORMALIZE;




 credits = ext4_chunk_trans_blocks(inode, len);
 depth = ext_depth(inode);

retry:
 while (ret >= 0 && len) {



  if (depth != ext_depth(inode)) {
   credits = ext4_chunk_trans_blocks(inode, len);
   depth = ext_depth(inode);
  }

  handle = ext4_journal_start(inode, EXT4_HT_MAP_BLOCKS,
         credits);
  if (IS_ERR(handle)) {
   ret = PTR_ERR(handle);
   break;
  }
  ret = ext4_map_blocks(handle, inode, &map, flags);
  if (ret <= 0) {
   ext4_debug("inode #%lu: block %u: len %u: "
       "ext4_ext_map_blocks returned %d",
       inode->i_ino, map.m_lblk,
       map.m_len, ret);
   ext4_mark_inode_dirty(handle, inode);
   ret2 = ext4_journal_stop(handle);
   break;
  }
  map.m_lblk += ret;
  map.m_len = len = len - ret;
  epos = (loff_t)map.m_lblk << inode->i_blkbits;
  inode->i_ctime = current_time(inode);
  if (new_size) {
   if (epos > new_size)
    epos = new_size;
   if (ext4_update_inode_size(inode, epos) & 0x1)
    inode->i_mtime = inode->i_ctime;
  } else {
   if (epos > inode->i_size)
    ext4_set_inode_flag(inode,
          EXT4_INODE_EOFBLOCKS);
  }
  ext4_mark_inode_dirty(handle, inode);
  ext4_update_inode_fsync_trans(handle, inode, 1);
  ret2 = ext4_journal_stop(handle);
  if (ret2)
   break;
 }
 if (ret == -ENOSPC &&
   ext4_should_retry_alloc(inode->i_sb, &retries)) {
  ret = 0;
  goto retry;
 }

 return ret > 0 ? ret2 : ret;
}
