
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {scalar_t__ private_data; TYPE_1__ f_path; } ;


 int ENOMEM ;
 scalar_t__ d_alloc_cursor (int ) ;

int dcache_dir_open(struct inode *inode, struct file *file)
{
 file->private_data = d_alloc_cursor(file->f_path.dentry);

 return file->private_data ? 0 : -ENOMEM;
}
