
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ext4_htree_free_dir_info (scalar_t__) ;

__attribute__((used)) static int ext4_release_dir(struct inode *inode, struct file *filp)
{
 if (filp->private_data)
  ext4_htree_free_dir_info(filp->private_data);

 return 0;
}
