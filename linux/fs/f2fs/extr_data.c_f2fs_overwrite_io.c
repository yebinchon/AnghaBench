
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_map_blocks {scalar_t__ m_lblk; int m_may_create; scalar_t__ m_len; int m_seg_type; int * m_next_extent; int * m_next_pgofs; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ block_t ;


 scalar_t__ F2FS_BLK_ALIGN (scalar_t__) ;
 scalar_t__ F2FS_BYTES_TO_BLK (scalar_t__) ;
 int F2FS_GET_BLOCK_DEFAULT ;
 int NO_CHECK_TYPE ;
 int f2fs_map_blocks (struct inode*,struct f2fs_map_blocks*,int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;

bool f2fs_overwrite_io(struct inode *inode, loff_t pos, size_t len)
{
 struct f2fs_map_blocks map;
 block_t last_lblk;
 int err;

 if (pos + len > i_size_read(inode))
  return 0;

 map.m_lblk = F2FS_BYTES_TO_BLK(pos);
 map.m_next_pgofs = ((void*)0);
 map.m_next_extent = ((void*)0);
 map.m_seg_type = NO_CHECK_TYPE;
 map.m_may_create = 0;
 last_lblk = F2FS_BLK_ALIGN(pos + len);

 while (map.m_lblk < last_lblk) {
  map.m_len = last_lblk - map.m_lblk;
  err = f2fs_map_blocks(inode, &map, 0, F2FS_GET_BLOCK_DEFAULT);
  if (err || map.m_len == 0)
   return 0;
  map.m_lblk += map.m_len;
 }
 return 1;
}
