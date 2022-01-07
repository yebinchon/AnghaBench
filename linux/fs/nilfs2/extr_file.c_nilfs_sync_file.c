
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_5__ {struct the_nilfs* s_fs_info; } ;
struct TYPE_4__ {struct inode* host; } ;


 int nilfs_construct_dsync_segment (TYPE_2__*,struct inode*,int ,int ) ;
 int nilfs_construct_segment (TYPE_2__*) ;
 int nilfs_flush_device (struct the_nilfs*) ;
 scalar_t__ nilfs_inode_dirty (struct inode*) ;

int nilfs_sync_file(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct the_nilfs *nilfs;
 struct inode *inode = file->f_mapping->host;
 int err = 0;

 if (nilfs_inode_dirty(inode)) {
  if (datasync)
   err = nilfs_construct_dsync_segment(inode->i_sb, inode,
           start, end);
  else
   err = nilfs_construct_segment(inode->i_sb);
 }

 nilfs = inode->i_sb->s_fs_info;
 if (!err)
  err = nilfs_flush_device(nilfs);

 return err;
}
