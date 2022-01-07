
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_state; } ;
struct file {TYPE_2__* f_op; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int (* fsync ) (struct file*,int ,int ,int) ;} ;
struct TYPE_3__ {struct inode* host; } ;


 int EINVAL ;
 int I_DIRTY_TIME ;
 int mark_inode_dirty_sync (struct inode*) ;
 int stub1 (struct file*,int ,int ,int) ;

int vfs_fsync_range(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file->f_mapping->host;

 if (!file->f_op->fsync)
  return -EINVAL;
 if (!datasync && (inode->i_state & I_DIRTY_TIME))
  mark_inode_dirty_sync(inode);
 return file->f_op->fsync(file, start, end, datasync);
}
