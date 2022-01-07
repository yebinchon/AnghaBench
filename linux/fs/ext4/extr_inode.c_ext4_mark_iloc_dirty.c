
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_iloc {int bh; } ;
typedef int handle_t ;


 int EIO ;
 int EXT4_SB (int ) ;
 scalar_t__ IS_I_VERSION (struct inode*) ;
 int ext4_do_update_inode (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_forced_shutdown (int ) ;
 int get_bh (int ) ;
 int inode_inc_iversion (struct inode*) ;
 int put_bh (int ) ;
 scalar_t__ unlikely (int ) ;

int ext4_mark_iloc_dirty(handle_t *handle,
    struct inode *inode, struct ext4_iloc *iloc)
{
 int err = 0;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb)))) {
  put_bh(iloc->bh);
  return -EIO;
 }
 if (IS_I_VERSION(inode))
  inode_inc_iversion(inode);


 get_bh(iloc->bh);


 err = ext4_do_update_inode(handle, inode, iloc);
 put_bh(iloc->bh);
 return err;
}
