
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int kernfs_put (int ) ;

__attribute__((used)) static int kernfs_dir_fop_release(struct inode *inode, struct file *filp)
{
 kernfs_put(filp->private_data);
 return 0;
}
