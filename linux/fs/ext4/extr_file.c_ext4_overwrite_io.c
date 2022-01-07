
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_blkbits; } ;
struct ext4_map_blocks {int m_len; int m_flags; scalar_t__ m_lblk; } ;
typedef scalar_t__ loff_t ;


 int EXT4_MAP_MAPPED ;
 int EXT4_MAX_BLOCKS (scalar_t__,scalar_t__,unsigned int) ;
 int ext4_map_blocks (int *,struct inode*,struct ext4_map_blocks*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;

__attribute__((used)) static bool ext4_overwrite_io(struct inode *inode, loff_t pos, loff_t len)
{
 struct ext4_map_blocks map;
 unsigned int blkbits = inode->i_blkbits;
 int err, blklen;

 if (pos + len > i_size_read(inode))
  return 0;

 map.m_lblk = pos >> blkbits;
 map.m_len = EXT4_MAX_BLOCKS(len, pos, blkbits);
 blklen = map.m_len;

 err = ext4_map_blocks(((void*)0), inode, &map, 0);





 return err == blklen && (map.m_flags & EXT4_MAP_MAPPED);
}
