
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {unsigned int i_blkbits; int i_sb; } ;
struct file {int f_flags; } ;
typedef unsigned int loff_t ;
typedef unsigned int ext4_lblk_t ;
struct TYPE_4__ {unsigned int i_disksize; int i_sync_tid; } ;
struct TYPE_3__ {scalar_t__ s_journal; } ;


 long EOPNOTSUPP ;
 int EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT ;
 int EXT4_GET_BLOCKS_KEEP_SIZE ;
 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 unsigned int EXT4_MAX_BLOCKS (unsigned int,unsigned int,unsigned int) ;
 TYPE_1__* EXT4_SB (int ) ;
 int FALLOC_FL_COLLAPSE_RANGE ;
 int FALLOC_FL_INSERT_RANGE ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FALLOC_FL_ZERO_RANGE ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int O_SYNC ;
 int ext4_alloc_file_blocks (struct file*,unsigned int,unsigned int,unsigned int,int) ;
 long ext4_collapse_range (struct inode*,unsigned int,unsigned int) ;
 int ext4_convert_inline_data (struct inode*) ;
 long ext4_insert_range (struct inode*,unsigned int,unsigned int) ;
 long ext4_punch_hole (struct inode*,unsigned int,unsigned int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 long ext4_zero_range (struct file*,unsigned int,unsigned int,int) ;
 struct inode* file_inode (struct file*) ;
 unsigned int i_size_read (struct inode*) ;
 int inode_dio_wait (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_newsize_ok (struct inode*,unsigned int) ;
 int inode_unlock (struct inode*) ;
 int jbd2_complete_transaction (scalar_t__,int ) ;
 int trace_ext4_fallocate_enter (struct inode*,unsigned int,unsigned int,int) ;
 int trace_ext4_fallocate_exit (struct inode*,unsigned int,unsigned int,int) ;

long ext4_fallocate(struct file *file, int mode, loff_t offset, loff_t len)
{
 struct inode *inode = file_inode(file);
 loff_t new_size = 0;
 unsigned int max_blocks;
 int ret = 0;
 int flags;
 ext4_lblk_t lblk;
 unsigned int blkbits = inode->i_blkbits;
 if (IS_ENCRYPTED(inode) &&
     (mode & (FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_INSERT_RANGE |
       FALLOC_FL_ZERO_RANGE)))
  return -EOPNOTSUPP;


 if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
       FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_ZERO_RANGE |
       FALLOC_FL_INSERT_RANGE))
  return -EOPNOTSUPP;

 if (mode & FALLOC_FL_PUNCH_HOLE)
  return ext4_punch_hole(inode, offset, len);

 ret = ext4_convert_inline_data(inode);
 if (ret)
  return ret;

 if (mode & FALLOC_FL_COLLAPSE_RANGE)
  return ext4_collapse_range(inode, offset, len);

 if (mode & FALLOC_FL_INSERT_RANGE)
  return ext4_insert_range(inode, offset, len);

 if (mode & FALLOC_FL_ZERO_RANGE)
  return ext4_zero_range(file, offset, len, mode);

 trace_ext4_fallocate_enter(inode, offset, len, mode);
 lblk = offset >> blkbits;

 max_blocks = EXT4_MAX_BLOCKS(len, offset, blkbits);
 flags = EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT;
 if (mode & FALLOC_FL_KEEP_SIZE)
  flags |= EXT4_GET_BLOCKS_KEEP_SIZE;

 inode_lock(inode);




 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (!(mode & FALLOC_FL_KEEP_SIZE) &&
     (offset + len > i_size_read(inode) ||
      offset + len > EXT4_I(inode)->i_disksize)) {
  new_size = offset + len;
  ret = inode_newsize_ok(inode, new_size);
  if (ret)
   goto out;
 }


 inode_dio_wait(inode);

 ret = ext4_alloc_file_blocks(file, lblk, max_blocks, new_size, flags);
 if (ret)
  goto out;

 if (file->f_flags & O_SYNC && EXT4_SB(inode->i_sb)->s_journal) {
  ret = jbd2_complete_transaction(EXT4_SB(inode->i_sb)->s_journal,
      EXT4_I(inode)->i_sync_tid);
 }
out:
 inode_unlock(inode);
 trace_ext4_fallocate_exit(inode, offset, max_blocks, ret);
 return ret;
}
