
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct f2fs_map_blocks {scalar_t__ m_lblk; scalar_t__* m_next_extent; int m_may_create; scalar_t__ m_len; int m_seg_type; int * m_next_pgofs; } ;
struct f2fs_inode_info {int * i_gc_rwsem; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ max_file_blocks; } ;


 int EOPNOTSUPP ;
 int F2FS_GET_BLOCK_PRECACHE ;
 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 TYPE_1__* F2FS_I_SB (struct inode*) ;
 int FI_NO_EXTENT ;
 int NO_CHECK_TYPE ;
 size_t WRITE ;
 int down_write (int *) ;
 int f2fs_map_blocks (struct inode*,struct f2fs_map_blocks*,int ,int ) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int up_write (int *) ;

int f2fs_precache_extents(struct inode *inode)
{
 struct f2fs_inode_info *fi = F2FS_I(inode);
 struct f2fs_map_blocks map;
 pgoff_t m_next_extent;
 loff_t end;
 int err;

 if (is_inode_flag_set(inode, FI_NO_EXTENT))
  return -EOPNOTSUPP;

 map.m_lblk = 0;
 map.m_next_pgofs = ((void*)0);
 map.m_next_extent = &m_next_extent;
 map.m_seg_type = NO_CHECK_TYPE;
 map.m_may_create = 0;
 end = F2FS_I_SB(inode)->max_file_blocks;

 while (map.m_lblk < end) {
  map.m_len = end - map.m_lblk;

  down_write(&fi->i_gc_rwsem[WRITE]);
  err = f2fs_map_blocks(inode, &map, 0, F2FS_GET_BLOCK_PRECACHE);
  up_write(&fi->i_gc_rwsem[WRITE]);
  if (err)
   return err;

  map.m_lblk = m_next_extent;
 }

 return err;
}
