
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;

long jffs2_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{


 return -ENOTTY;
}
