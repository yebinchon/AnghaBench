
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int fd; } ;
struct TYPE_3__ {struct inode* host; } ;


 TYPE_2__* HOSTFS_I (struct inode*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int fsync_file (int ,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static int hostfs_fsync(struct file *file, loff_t start, loff_t end,
   int datasync)
{
 struct inode *inode = file->f_mapping->host;
 int ret;

 ret = file_write_and_wait_range(file, start, end);
 if (ret)
  return ret;

 inode_lock(inode);
 ret = fsync_file(HOSTFS_I(inode)->fd, datasync);
 inode_unlock(inode);

 return ret;
}
