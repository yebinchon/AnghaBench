
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_mapping; int i_mode; int i_ino; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int UFSD (char*,int,...) ;
 int block_truncate_page (int ,scalar_t__,int ) ;
 int current_time (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;
 int ufs_alloc_lastblock (struct inode*,scalar_t__) ;
 int ufs_getfrag_block ;
 int ufs_truncate_blocks (struct inode*) ;

__attribute__((used)) static int ufs_truncate(struct inode *inode, loff_t size)
{
 int err = 0;

 UFSD("ENTER: ino %lu, i_size: %llu, old_i_size: %llu\n",
      inode->i_ino, (unsigned long long)size,
      (unsigned long long)i_size_read(inode));

 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
       S_ISLNK(inode->i_mode)))
  return -EINVAL;
 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return -EPERM;

 err = ufs_alloc_lastblock(inode, size);

 if (err)
  goto out;

 block_truncate_page(inode->i_mapping, size, ufs_getfrag_block);

 truncate_setsize(inode, size);

 ufs_truncate_blocks(inode);
 inode->i_mtime = inode->i_ctime = current_time(inode);
 mark_inode_dirty(inode);
out:
 UFSD("EXIT: err %d\n", err);
 return err;
}
