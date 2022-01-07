
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubifs_info {scalar_t__ ro_mount; } ;
struct inode {int i_state; TYPE_3__* i_sb; int i_ino; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_1__* s_op; struct ubifs_info* s_fs_info; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {int (* write_inode ) (struct inode*,int *) ;} ;


 int I_DIRTY_DATASYNC ;
 int dbg_gen (char*,int ) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int stub1 (struct inode*,int *) ;
 int ubifs_sync_wbufs_by_inode (struct ubifs_info*,struct inode*) ;

int ubifs_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file->f_mapping->host;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 int err;

 dbg_gen("syncing inode %lu", inode->i_ino);

 if (c->ro_mount)




  return 0;

 err = file_write_and_wait_range(file, start, end);
 if (err)
  return err;
 inode_lock(inode);


 if (!datasync || (inode->i_state & I_DIRTY_DATASYNC)) {
  err = inode->i_sb->s_op->write_inode(inode, ((void*)0));
  if (err)
   goto out;
 }





 err = ubifs_sync_wbufs_by_inode(c, inode);
out:
 inode_unlock(inode);
 return err;
}
