
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 int EXT4_HT_INODE ;
 scalar_t__ IS_ERR (int *) ;
 int I_DIRTY_TIME ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;

void ext4_dirty_inode(struct inode *inode, int flags)
{
 handle_t *handle;

 if (flags == I_DIRTY_TIME)
  return;
 handle = ext4_journal_start(inode, EXT4_HT_INODE, 2);
 if (IS_ERR(handle))
  goto out;

 ext4_mark_inode_dirty(handle, inode);

 ext4_journal_stop(handle);
out:
 return;
}
