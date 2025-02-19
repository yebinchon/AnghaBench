
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_map_blocks {int m_may_create; unsigned long long m_lblk; int m_len; int m_seg_type; int * m_next_extent; int * m_next_pgofs; } ;
typedef int pgoff_t ;
typedef unsigned long long loff_t ;


 int CURSEG_COLD_DATA ;
 int F2FS_GET_BLOCK_PRE_AIO ;
 int F2FS_GET_BLOCK_PRE_DIO ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FALLOC_FL_KEEP_SIZE ;
 int NO_CHECK_TYPE ;
 unsigned long long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 int f2fs_i_size_write (struct inode*,unsigned long long) ;
 scalar_t__ f2fs_is_pinned_file (struct inode*) ;
 int f2fs_map_blocks (struct inode*,struct f2fs_map_blocks*,int,int ) ;
 int file_set_keep_isize (struct inode*) ;
 unsigned long long i_size_read (struct inode*) ;
 int inode_newsize_ok (struct inode*,unsigned long long) ;

__attribute__((used)) static int expand_inode_data(struct inode *inode, loff_t offset,
     loff_t len, int mode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct f2fs_map_blocks map = { .m_next_pgofs = ((void*)0),
   .m_next_extent = ((void*)0), .m_seg_type = NO_CHECK_TYPE,
   .m_may_create = 1 };
 pgoff_t pg_end;
 loff_t new_size = i_size_read(inode);
 loff_t off_end;
 int err;

 err = inode_newsize_ok(inode, (len + offset));
 if (err)
  return err;

 err = f2fs_convert_inline_inode(inode);
 if (err)
  return err;

 f2fs_balance_fs(sbi, 1);

 pg_end = ((unsigned long long)offset + len) >> PAGE_SHIFT;
 off_end = (offset + len) & (PAGE_SIZE - 1);

 map.m_lblk = ((unsigned long long)offset) >> PAGE_SHIFT;
 map.m_len = pg_end - map.m_lblk;
 if (off_end)
  map.m_len++;

 if (f2fs_is_pinned_file(inode))
  map.m_seg_type = CURSEG_COLD_DATA;

 err = f2fs_map_blocks(inode, &map, 1, (f2fs_is_pinned_file(inode) ?
      F2FS_GET_BLOCK_PRE_DIO :
      F2FS_GET_BLOCK_PRE_AIO));
 if (err) {
  pgoff_t last_off;

  if (!map.m_len)
   return err;

  last_off = map.m_lblk + map.m_len - 1;


  new_size = (last_off == pg_end) ? offset + len :
     (loff_t)(last_off + 1) << PAGE_SHIFT;
 } else {
  new_size = ((loff_t)pg_end << PAGE_SHIFT) + off_end;
 }

 if (new_size > i_size_read(inode)) {
  if (mode & FALLOC_FL_KEEP_SIZE)
   file_set_keep_isize(inode);
  else
   f2fs_i_size_write(inode, new_size);
 }

 return err;
}
