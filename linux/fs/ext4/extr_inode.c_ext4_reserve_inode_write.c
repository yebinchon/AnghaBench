
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_iloc {int * bh; } ;
typedef int handle_t ;


 int BUFFER_TRACE (int *,char*) ;
 int EIO ;
 int EXT4_SB (int ) ;
 int brelse (int *) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_journal_get_write_access (int *,int *) ;
 int ext4_std_error (int ,int) ;
 scalar_t__ unlikely (int ) ;

int
ext4_reserve_inode_write(handle_t *handle, struct inode *inode,
    struct ext4_iloc *iloc)
{
 int err;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 err = ext4_get_inode_loc(inode, iloc);
 if (!err) {
  BUFFER_TRACE(iloc->bh, "get_write_access");
  err = ext4_journal_get_write_access(handle, iloc->bh);
  if (err) {
   brelse(iloc->bh);
   iloc->bh = ((void*)0);
  }
 }
 ext4_std_error(inode->i_sb, err);
 return err;
}
