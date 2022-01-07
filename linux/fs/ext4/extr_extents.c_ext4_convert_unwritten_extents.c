
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_blkbits; int i_ino; int i_sb; } ;
struct ext4_map_blocks {unsigned int m_lblk; unsigned int m_len; } ;
typedef int ssize_t ;
typedef unsigned int loff_t ;
typedef int handle_t ;


 int EXT4_GET_BLOCKS_IO_CONVERT_EXT ;
 int EXT4_HT_EXT_CONVERT ;
 int EXT4_HT_MAP_BLOCKS ;
 unsigned int EXT4_MAX_BLOCKS (int ,unsigned int,unsigned int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 unsigned int ext4_chunk_trans_blocks (struct inode*,unsigned int) ;
 int * ext4_journal_start (struct inode*,int ,unsigned int) ;
 int * ext4_journal_start_reserved (int *,int ) ;
 int ext4_journal_stop (int *) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int ) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_warning (int ,char*,int ,int,unsigned int,int) ;

int ext4_convert_unwritten_extents(handle_t *handle, struct inode *inode,
       loff_t offset, ssize_t len)
{
 unsigned int max_blocks;
 int ret = 0;
 int ret2 = 0;
 struct ext4_map_blocks map;
 unsigned int credits, blkbits = inode->i_blkbits;

 map.m_lblk = offset >> blkbits;
 max_blocks = EXT4_MAX_BLOCKS(len, offset, blkbits);






 if (handle) {
  handle = ext4_journal_start_reserved(handle,
           EXT4_HT_EXT_CONVERT);
  if (IS_ERR(handle))
   return PTR_ERR(handle);
  credits = 0;
 } else {



  credits = ext4_chunk_trans_blocks(inode, max_blocks);
 }
 while (ret >= 0 && ret < max_blocks) {
  map.m_lblk += ret;
  map.m_len = (max_blocks -= ret);
  if (credits) {
   handle = ext4_journal_start(inode, EXT4_HT_MAP_BLOCKS,
          credits);
   if (IS_ERR(handle)) {
    ret = PTR_ERR(handle);
    break;
   }
  }
  ret = ext4_map_blocks(handle, inode, &map,
          EXT4_GET_BLOCKS_IO_CONVERT_EXT);
  if (ret <= 0)
   ext4_warning(inode->i_sb,
         "inode #%lu: block %u: len %u: "
         "ext4_ext_map_blocks returned %d",
         inode->i_ino, map.m_lblk,
         map.m_len, ret);
  ext4_mark_inode_dirty(handle, inode);
  if (credits)
   ret2 = ext4_journal_stop(handle);
  if (ret <= 0 || ret2)
   break;
 }
 if (!credits)
  ret2 = ext4_journal_stop(handle);
 return ret > 0 ? ret2 : ret;
}
