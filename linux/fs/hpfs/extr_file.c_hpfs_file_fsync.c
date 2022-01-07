
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;


 int file_write_and_wait_range (struct file*,int ,int ) ;
 int sync_blockdev (int ) ;

int hpfs_file_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file->f_mapping->host;
 int ret;

 ret = file_write_and_wait_range(file, start, end);
 if (ret)
  return ret;
 return sync_blockdev(inode->i_sb->s_bdev);
}
