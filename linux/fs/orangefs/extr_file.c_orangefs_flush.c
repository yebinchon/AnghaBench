
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_lock; } ;
struct file {TYPE_1__* f_mapping; int * private_data; } ;
typedef int fl_owner_t ;
struct TYPE_2__ {struct inode* host; } ;


 int I_DIRTY_TIME ;
 int LLONG_MAX ;
 int filemap_write_and_wait_range (TYPE_1__*,int ,int ) ;
 int kfree (int *) ;
 int mark_inode_dirty_sync (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int orangefs_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file->f_mapping->host;
 int r;

 kfree(file->private_data);
 file->private_data = ((void*)0);

 if (inode->i_state & I_DIRTY_TIME) {
  spin_lock(&inode->i_lock);
  inode->i_state &= ~I_DIRTY_TIME;
  spin_unlock(&inode->i_lock);
  mark_inode_dirty_sync(inode);
 }

 r = filemap_write_and_wait_range(file->f_mapping, 0, LLONG_MAX);
 if (r > 0)
  return 0;
 else
  return r;
}
