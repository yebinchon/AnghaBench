
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hfs_readdir_data {int list; } ;
struct file {struct hfs_readdir_data* private_data; } ;
struct TYPE_2__ {int open_dir_lock; } ;


 TYPE_1__* HFS_I (struct inode*) ;
 int kfree (struct hfs_readdir_data*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hfs_dir_release(struct inode *inode, struct file *file)
{
 struct hfs_readdir_data *rd = file->private_data;
 if (rd) {
  spin_lock(&HFS_I(inode)->open_dir_lock);
  list_del(&rd->list);
  spin_unlock(&HFS_I(inode)->open_dir_lock);
  kfree(rd);
 }
 return 0;
}
