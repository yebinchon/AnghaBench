
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct file {scalar_t__ private_data; } ;



int simple_open(struct inode *inode, struct file *file)
{
 if (inode->i_private)
  file->private_data = inode->i_private;
 return 0;
}
