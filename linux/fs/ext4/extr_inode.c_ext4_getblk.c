
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_map_blocks {int m_len; int m_flags; int m_pblk; int m_lblk; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int ENOMEM ;
 int ENOSPC ;
 struct buffer_head* ERR_PTR (int) ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_MAP_NEW ;
 int J_ASSERT (int) ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_create_access (int *,struct buffer_head*) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (TYPE_1__*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;

struct buffer_head *ext4_getblk(handle_t *handle, struct inode *inode,
    ext4_lblk_t block, int map_flags)
{
 struct ext4_map_blocks map;
 struct buffer_head *bh;
 int create = map_flags & EXT4_GET_BLOCKS_CREATE;
 int err;

 J_ASSERT(handle != ((void*)0) || create == 0);

 map.m_lblk = block;
 map.m_len = 1;
 err = ext4_map_blocks(handle, inode, &map, map_flags);

 if (err == 0)
  return create ? ERR_PTR(-ENOSPC) : ((void*)0);
 if (err < 0)
  return ERR_PTR(err);

 bh = sb_getblk(inode->i_sb, map.m_pblk);
 if (unlikely(!bh))
  return ERR_PTR(-ENOMEM);
 if (map.m_flags & EXT4_MAP_NEW) {
  J_ASSERT(create != 0);
  J_ASSERT(handle != ((void*)0));
  lock_buffer(bh);
  BUFFER_TRACE(bh, "call get_create_access");
  err = ext4_journal_get_create_access(handle, bh);
  if (unlikely(err)) {
   unlock_buffer(bh);
   goto errout;
  }
  if (!buffer_uptodate(bh)) {
   memset(bh->b_data, 0, inode->i_sb->s_blocksize);
   set_buffer_uptodate(bh);
  }
  unlock_buffer(bh);
  BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
  err = ext4_handle_dirty_metadata(handle, inode, bh);
  if (unlikely(err))
   goto errout;
 } else
  BUFFER_TRACE(bh, "not a new buffer");
 return bh;
errout:
 brelse(bh);
 return ERR_PTR(err);
}
