
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct ext4_map_blocks {int m_len; int m_flags; int m_pblk; int m_lblk; } ;
struct buffer_head {int b_size; } ;
typedef int sector_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int ERANGE ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext4_journal_current_handle () ;
 int ext4_map_blocks (int ,struct inode*,struct ext4_map_blocks*,int) ;
 int ext4_update_bh_state (struct buffer_head*,int ) ;
 int map_bh (struct buffer_head*,TYPE_1__*,int ) ;

__attribute__((used)) static int _ext4_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh, int flags)
{
 struct ext4_map_blocks map;
 int ret = 0;

 if (ext4_has_inline_data(inode))
  return -ERANGE;

 map.m_lblk = iblock;
 map.m_len = bh->b_size >> inode->i_blkbits;

 ret = ext4_map_blocks(ext4_journal_current_handle(), inode, &map,
         flags);
 if (ret > 0) {
  map_bh(bh, inode->i_sb, map.m_pblk);
  ext4_update_bh_state(bh, map.m_flags);
  bh->b_size = inode->i_sb->s_blocksize * map.m_len;
  ret = 0;
 } else if (ret == 0) {

  bh->b_size = inode->i_sb->s_blocksize * map.m_len;
 }
 return ret;
}
