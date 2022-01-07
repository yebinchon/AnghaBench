
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; scalar_t__ ki_pos; int ki_hint; int ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_map_blocks {scalar_t__ m_lblk; scalar_t__ m_len; int m_may_create; int m_seg_type; int * m_next_extent; int * m_next_pgofs; } ;


 int ENOSPC ;
 scalar_t__ F2FS_BLK_ALIGN (scalar_t__) ;
 scalar_t__ F2FS_BYTES_TO_BLK (scalar_t__) ;
 int F2FS_GET_BLOCK_PRE_AIO ;
 int F2FS_GET_BLOCK_PRE_DIO ;
 int FI_NO_PREALLOC ;
 int IOCB_DIRECT ;
 scalar_t__ MAX_INLINE_DATA (struct inode*) ;
 int NO_CHECK_TYPE ;
 scalar_t__ allow_outplace_dio (struct inode*,struct kiocb*,struct iov_iter*) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 scalar_t__ f2fs_force_buffered_io (struct inode*,struct kiocb*,struct iov_iter*) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_map_blocks (struct inode*,struct f2fs_map_blocks*,int,int) ;
 int f2fs_rw_hint_to_seg_type (int ) ;
 struct inode* file_inode (int ) ;
 scalar_t__ iov_iter_count (struct iov_iter*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int set_inode_flag (struct inode*,int ) ;

int f2fs_preallocate_blocks(struct kiocb *iocb, struct iov_iter *from)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 struct f2fs_map_blocks map;
 int flag;
 int err = 0;
 bool direct_io = iocb->ki_flags & IOCB_DIRECT;


 if (direct_io) {
  err = f2fs_convert_inline_inode(inode);
  if (err)
   return err;
 }

 if (direct_io && allow_outplace_dio(inode, iocb, from))
  return 0;

 if (is_inode_flag_set(inode, FI_NO_PREALLOC))
  return 0;

 map.m_lblk = F2FS_BLK_ALIGN(iocb->ki_pos);
 map.m_len = F2FS_BYTES_TO_BLK(iocb->ki_pos + iov_iter_count(from));
 if (map.m_len > map.m_lblk)
  map.m_len -= map.m_lblk;
 else
  map.m_len = 0;

 map.m_next_pgofs = ((void*)0);
 map.m_next_extent = ((void*)0);
 map.m_seg_type = NO_CHECK_TYPE;
 map.m_may_create = 1;

 if (direct_io) {
  map.m_seg_type = f2fs_rw_hint_to_seg_type(iocb->ki_hint);
  flag = f2fs_force_buffered_io(inode, iocb, from) ?
     F2FS_GET_BLOCK_PRE_AIO :
     F2FS_GET_BLOCK_PRE_DIO;
  goto map_blocks;
 }
 if (iocb->ki_pos + iov_iter_count(from) > MAX_INLINE_DATA(inode)) {
  err = f2fs_convert_inline_inode(inode);
  if (err)
   return err;
 }
 if (f2fs_has_inline_data(inode))
  return err;

 flag = F2FS_GET_BLOCK_PRE_AIO;

map_blocks:
 err = f2fs_map_blocks(inode, &map, 1, flag);
 if (map.m_len > 0 && err == -ENOSPC) {
  if (!direct_io)
   set_inode_flag(inode, FI_NO_PREALLOC);
  err = 0;
 }
 return err;
}
