
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_map_blocks {int m_len; int m_flags; int m_pblk; int m_lblk; } ;
struct buffer_head {scalar_t__ b_size; } ;
typedef int sector_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;


 int BUG_ON (int) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 int ext4_da_map_blocks (struct inode*,int ,struct ext4_map_blocks*,struct buffer_head*) ;
 int ext4_update_bh_state (struct buffer_head*,int ) ;
 int map_bh (struct buffer_head*,TYPE_1__*,int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;

int ext4_da_get_block_prep(struct inode *inode, sector_t iblock,
      struct buffer_head *bh, int create)
{
 struct ext4_map_blocks map;
 int ret = 0;

 BUG_ON(create == 0);
 BUG_ON(bh->b_size != inode->i_sb->s_blocksize);

 map.m_lblk = iblock;
 map.m_len = 1;






 ret = ext4_da_map_blocks(inode, iblock, &map, bh);
 if (ret <= 0)
  return ret;

 map_bh(bh, inode->i_sb, map.m_pblk);
 ext4_update_bh_state(bh, map.m_flags);

 if (buffer_unwritten(bh)) {






  set_buffer_new(bh);
  set_buffer_mapped(bh);
 }
 return 0;
}
