
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int no_blkdev_open(struct inode * inode, struct file * filp)
{
 return -ENODEV;
}
