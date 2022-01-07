
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_mapping; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int I_DIRTY_ALL ;
 int I_DIRTY_DATASYNC ;
 int file_check_and_advance_wb_err (struct file*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int sync_inode_metadata (struct inode*,int) ;
 int sync_mapping_buffers (int ) ;

int __generic_file_fsync(struct file *file, loff_t start, loff_t end,
     int datasync)
{
 struct inode *inode = file->f_mapping->host;
 int err;
 int ret;

 err = file_write_and_wait_range(file, start, end);
 if (err)
  return err;

 inode_lock(inode);
 ret = sync_mapping_buffers(inode->i_mapping);
 if (!(inode->i_state & I_DIRTY_ALL))
  goto out;
 if (datasync && !(inode->i_state & I_DIRTY_DATASYNC))
  goto out;

 err = sync_inode_metadata(inode, 1);
 if (ret == 0)
  ret = err;

out:
 inode_unlock(inode);

 err = file_check_and_advance_wb_err(file);
 if (ret == 0)
  ret = err;
 return ret;
}
