
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kmalloc (int,int ) ;

__attribute__((used)) static int
fault_open(struct inode *inode, struct file *filp)
{
 filp->private_data = kmalloc(128, GFP_KERNEL);
 if (!filp->private_data)
  return -ENOMEM;
 return 0;
}
