
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {TYPE_4__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_8__ {int s_bdev; } ;
struct TYPE_7__ {TYPE_2__* fat_inode; } ;
struct TYPE_6__ {int i_mapping; } ;
struct TYPE_5__ {struct inode* host; } ;


 int GFP_KERNEL ;
 TYPE_3__* MSDOS_SB (TYPE_4__*) ;
 int __generic_file_fsync (struct file*,int ,int ,int) ;
 int blkdev_issue_flush (int ,int ,int *) ;
 int sync_mapping_buffers (int ) ;

int fat_file_fsync(struct file *filp, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = filp->f_mapping->host;
 int err;

 err = __generic_file_fsync(filp, start, end, datasync);
 if (err)
  return err;

 err = sync_mapping_buffers(MSDOS_SB(inode->i_sb)->fat_inode->i_mapping);
 if (err)
  return err;

 return blkdev_issue_flush(inode->i_sb->s_bdev, GFP_KERNEL, ((void*)0));
}
