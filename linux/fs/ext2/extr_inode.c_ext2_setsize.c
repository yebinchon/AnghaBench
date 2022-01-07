
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; int i_ctime; int i_mtime; int i_sb; int i_mode; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EPERM ;
 int EXT2_I (struct inode*) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_DAX (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int NOBH ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __ext2_truncate_blocks (struct inode*,scalar_t__) ;
 int block_truncate_page (int ,scalar_t__,int ) ;
 int current_time (struct inode*) ;
 int dax_sem_down_write (int ) ;
 int dax_sem_up_write (int ) ;
 int ext2_get_block ;
 scalar_t__ ext2_inode_is_fast_symlink (struct inode*) ;
 int ext2_iomap_ops ;
 int inode_dio_wait (struct inode*) ;
 scalar_t__ inode_needs_sync (struct inode*) ;
 int iomap_zero_range (struct inode*,scalar_t__,scalar_t__,int *,int *) ;
 int mark_inode_dirty (struct inode*) ;
 int nobh_truncate_page (int ,scalar_t__,int ) ;
 int sync_inode_metadata (struct inode*,int) ;
 int sync_mapping_buffers (int ) ;
 scalar_t__ test_opt (int ,int ) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

__attribute__((used)) static int ext2_setsize(struct inode *inode, loff_t newsize)
{
 int error;

 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
     S_ISLNK(inode->i_mode)))
  return -EINVAL;
 if (ext2_inode_is_fast_symlink(inode))
  return -EINVAL;
 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return -EPERM;

 inode_dio_wait(inode);

 if (IS_DAX(inode)) {
  error = iomap_zero_range(inode, newsize,
      PAGE_ALIGN(newsize) - newsize, ((void*)0),
      &ext2_iomap_ops);
 } else if (test_opt(inode->i_sb, NOBH))
  error = nobh_truncate_page(inode->i_mapping,
    newsize, ext2_get_block);
 else
  error = block_truncate_page(inode->i_mapping,
    newsize, ext2_get_block);
 if (error)
  return error;

 dax_sem_down_write(EXT2_I(inode));
 truncate_setsize(inode, newsize);
 __ext2_truncate_blocks(inode, newsize);
 dax_sem_up_write(EXT2_I(inode));

 inode->i_mtime = inode->i_ctime = current_time(inode);
 if (inode_needs_sync(inode)) {
  sync_mapping_buffers(inode->i_mapping);
  sync_inode_metadata(inode, 1);
 } else {
  mark_inode_dirty(inode);
 }

 return 0;
}
